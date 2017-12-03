package com.dqd.three.controller;

import com.dqd.three.dubbo.service.RedisService;
import com.dqd.three.pojo.Match;
import com.dqd.three.service.MatchService;
import com.dqd.three.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
@Controller
@RequestMapping("/match")
public class MatchController {

    @Autowired
    private MatchService matchService;

    @Autowired
    private RedisService redisService;

    @RequestMapping("/list")
    public ModelAndView list(@RequestParam(required = false,defaultValue = "中超") String country,@RequestParam(required = false,defaultValue = "0")Integer round){
        ModelAndView modelAndView=new ModelAndView();
        String result = redisService.get(country + "_" + round);

        List<Match> matches;
        if(result!=null){
            matches=JsonUtils.jsonToList(result,Match.class);
        }else {
            if(round==0){
                matches= matchService.findByCountry(country);
            }else {
                matches=matchService.findByRound(country,round);
            }

            String json = JsonUtils.objectToJson(matches);
            redisService.set(country+"_"+round,json);
        }

        modelAndView.addObject("matches",matches);
        modelAndView.addObject("country",country);
        try {
            modelAndView.addObject("round",matches.get(0).getRound());
        }catch (Exception e){
            modelAndView.addObject("round",round);
            modelAndView.addObject("msg","这轮比赛未开始");
        }
        modelAndView.setViewName("match");
        return modelAndView;
    }

    @RequestMapping("/time")
    public ModelAndView time(@RequestParam(required = false,defaultValue = "0") String time,
                             @RequestParam(required = false,defaultValue = "")String country){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date startTime;
        ModelAndView modelAndView=new ModelAndView();
        try {
            if("0".equals(time)){
                startTime=new Date();
            }else {
                startTime=sdf.parse(time);
            }
            List<Match> matches=matchService.findOneDay(startTime,country);
            modelAndView.addObject("matches",matches);
            modelAndView.addObject("country",country);
            modelAndView.addObject("time",startTime);
            if(matches==null||matches.size()==0){
                modelAndView.addObject("msg","近期没有更多比赛");
            }
            modelAndView.setViewName("totalMatch");
        }catch (Exception e){
            modelAndView.setViewName("error");
            e.printStackTrace();
        }
        return modelAndView;
    }
}
