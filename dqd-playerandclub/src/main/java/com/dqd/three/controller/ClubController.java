package com.dqd.three.controller;

import com.dqd.dubbo.service.DubboRedisService;
import com.dqd.three.dubbo.service.RedisService;
import com.dqd.three.pojo.Club;
import com.dqd.three.service.ClubService;
import com.dqd.three.utils.JsonUtils;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
@Controller
@RequestMapping("/club")
public class ClubController {

    @Autowired
    private ClubService clubService;

    @Autowired
    private RedisService redisService;

    @Autowired
    private DubboRedisService dubboRedisService;

    @RequestMapping("/list")
    @ResponseBody
    public ModelAndView showClub(@RequestParam(required = false, defaultValue = "中超") String country) {
        List<Club> list;
        ModelAndView modelAndView = new ModelAndView();
        String result = dubboRedisService.get("club:" + country);
        if (result != null) {
            list = JsonUtils.jsonToList(result, Club.class);
        } else {
            list = clubService.findByCountry(country);
            String s = JsonUtils.objectToJson(list);
            dubboRedisService.set("club:" + country, s);
        }

        modelAndView.addObject("list", list);
        modelAndView.addObject("country", country);
        modelAndView.setViewName("club");
        return modelAndView;
    }
}
