package com.dqd.three.controller;

import com.dqd.three.pojo.User;
import com.dqd.three.service.RedisService;
import com.dqd.three.service.UserService;
import com.dqd.three.util.Constants;
import com.dqd.three.util.FastDFSClient;
import com.dqd.three.util.SendMessage;
import org.apache.activemq.command.ActiveMQTopic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @Houxudong
 **/
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RedisService redisService;

    @Autowired
    private SendMessage sendMessage;

    @RequestMapping("/")
    public String goreg(){
        return "index";
    }
    //用户注册
    @RequestMapping("/reg")
    public String reg(@Validated User user, BindingResult result, HttpServletRequest request,String vcode_phone){
        request.setAttribute("error",result);
        String s = redisService.get(user.getUserTel());
        System.out.println("s:"+s);
        System.out.println("vcode_phone:"+vcode_phone);
        if(!result.hasErrors()){
            if(vcode_phone.equals(s)){
                userService.register(user);
                //验证成功则删除redis中的记录
                redisService.del(s);
                return "redirect:login";
            }else{
                request.setAttribute("checkmsg","验证码错误");
                return "register";
            }
        }
    return "register";

    }
    //校验用户手机号是否被注册过
    @RequestMapping("/checkPhone")
    @ResponseBody
    public Map<String,Object> checkPhone(String userTel){
        User user = userService.getUserByTel(userTel);
        Map<String,Object> result = new HashMap<>();
        if(user!=null){
            result.put("phoneMsg","手机号已被注册");
            result.put("status",false);
        }else{
            result.put("phoneMsg","手机号可以使用");
            result.put("status",true);
        }
        return result;
    }
    //校验用户名是否可用
    @RequestMapping("/check")
    @ResponseBody
    public Map<String,Object> check(String username){
        User user = userService.getUserByName(username);
        System.out.println(username);
        Map<String,Object> result = new HashMap<>();
        if(user!=null){
            result.put("nameMsg","用户名已被占用");
            result.put("status",false);
        }else if(username==null||username.trim().length()==0){
            result.put("nameMsg","请输入用户名");
            result.put("status",false);
        }else{
            result.put("nameMsg","用户名可以使用");
            result.put("status",true);
        }
        return result;
    }
   //用户登录（两种方式）
    @RequestMapping("/login")
    @ResponseBody
    public ModelAndView login(String username, String password, String userTel, String LoginCheckCode,HttpSession session) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        try {
            User user = null;
            //用户名密码登录
            if(username!=null&&username.trim().length()!=0&&password!=null&&password.trim().length()!=0){
               user = userService.doLoginByName(username, password);
                modelAndView.setViewName("index");
                //登录成功将用户放入session中
                session.setAttribute(Constants.USER_SESSION,user);
                sendMessage.loginMsg(username);
            }
            //手机验证码登录
            if(userTel!=null&&userTel.trim().length()!=0&&LoginCheckCode!=null&&LoginCheckCode.trim().length()!=0){
                String s = redisService.get(userTel);
                if(s.equals(LoginCheckCode)){
                    user = userService.getUserByTel(userTel);
                    modelAndView.setViewName("index");
                    //登录成功将用户放入session中
                    session.setAttribute(Constants.USER_SESSION,user);
                    //验证成功则删除redis中的记录
                    redisService.del(s);
                    sendMessage.loginMsg(username);
                }else{
                    modelAndView.setViewName("login");
                    modelAndView.addObject("error","验证码错误");
                }

            }
        }catch (Exception e){
            e.printStackTrace();
            modelAndView.setViewName("login");
            modelAndView.addObject("error","用户名或密码错误");
        }

        return modelAndView;
    }
    //退出登录
    @RequestMapping("/loginout")
    public String loginout(HttpSession session){
        session.invalidate();
        return "redirect:login";
    }
    //上传头像到分布式文件系统
    @RequestMapping("/uploadPic")
    @ResponseBody
    public String upload(@RequestParam(required=false) MultipartFile file, HttpServletResponse response) throws Exception{
            System.out.println("文件:"+file);
            FastDFSClient fastDFSClient = new FastDFSClient("client.conf");
            String realpath  = file.getOriginalFilename();
            //获取上传文件的后缀名
            String suffix = realpath.substring(realpath.lastIndexOf('.')+1);
            String[] jpgs = fastDFSClient.uploadFile(file.getBytes(), suffix);
            String path = Constants.url+jpgs[0]+"/"+jpgs[1];
            return path;//返回分布式文件系统中文件的路径

    }
    @RequestMapping("/update")
    public String userModify(User user,HttpSession session){
        userService.updateUser(user);
        session.setAttribute(Constants.USER_SESSION,user);
        return "user_info";
    }
}
