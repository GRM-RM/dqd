package com.dqd.three.controller;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.dqd.three.service.RedisService;
import com.dqd.three.util.AliAccessKey;
import com.dqd.three.util.RandomStringTLUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.HashMap;
import java.util.Map;

/**
 * @Houxudong
 **/
@Controller
public class SmsController {
    @Autowired
    private RedisService redisService;

    @RequestMapping("/ajaxNum")
    @ResponseBody
    public Map<String,Object> sendMsg(String phoneNum, Model model) throws Exception{
        Map<String,Object> map = new HashMap<>();
        Long maxday = 10000l;//网站最大日访问量
        Long maxphone = 5l;//单个手机号可访问次数
        Long incr1 = redisService.incr("maxphone" + phoneNum);
        if(incr1==1l){
            redisService.setMaxTime("maxphone" + phoneNum);
        }
        System.out.println(phoneNum+"已访问"+incr1+"次");
        Long incr2 = redisService.incr("maxday");
        if(incr2==1l){
            redisService.setMaxTime("maxday");
        }
        System.out.println("总访问量"+incr2);

        if(incr2>maxday){
            map.put("smsmsg","抱歉，服务器正在维护");
            map.put("status",false);
            return map;
        }
        if(incr1>maxphone){
            map.put("smsmsg","您今日访问已达上限,请于24小时后访问");
            map.put("status",false);
            return map;
        }

        //设置超时时间-可自行调整
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        //初始化ascClient需要的几个参数
        final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
        final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
        //替换成你的AK
        final String accessKeyId = AliAccessKey.ACCESS_KEY_ID;//你的accessKeyId,参考本文档步骤2
        final String accessKeySecret = AliAccessKey.ACCESS_KEY_SECRET;//你的accessKeySecret，参考本文档步骤2
        //初始化ascClient,暂时不支持多region（请勿修改）
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId,
                accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        //组装请求对象
        SendSmsRequest request = new SendSmsRequest();
        //使用post提交
        request.setMethod(MethodType.POST);
        //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
        request.setPhoneNumbers(phoneNum);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("郭如梦");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_109360192");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        //友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
        //生成验证码：
        String numeric = RandomStringTLUtils.randomNumeric(6);


        request.setTemplateParam("{\"code\":\""+numeric+"\"}");//动态传递验证码给手机
        //可选-上行短信扩展码(扩展码字段控制在7位或以下，无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");
        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        request.setOutId("houxudong");
        //请求失败这里会抛ClientException异常
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
        if(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
            //请求成功
            redisService.set(phoneNum,numeric);//将生成的验证码放入redis缓存，并且设置过期时间
            map.put("status",true);
            return map;
        }
        map.put("smsmsg","获取验证码失败");
        map.put("status",false);
        return map;

    }

}
