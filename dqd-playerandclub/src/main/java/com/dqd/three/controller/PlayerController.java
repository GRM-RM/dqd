package com.dqd.three.controller;

import com.dqd.three.dubbo.service.RedisService;
import com.dqd.three.pojo.Player;
import com.dqd.three.service.PlayerService;
import com.dqd.three.utils.JsonUtils;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * A unique of the lion
 *
 * @author grm
 */
@Controller
@RequestMapping("/player")
public class PlayerController {

    @Autowired
    private PlayerService playerService;

    @Autowired
    private RedisService redisService;

    @RequestMapping("/list")
    public ModelAndView showPlay(String country, @RequestParam(required = false, defaultValue = "1") Integer pageIndex,
                                 @RequestParam(required = false, defaultValue = "10") Integer pageSize, Integer mark) {
        PageInfo<Player> page;
        String result = redisService.get(country + "_" + pageIndex + "_" + pageSize+"_"+mark);
        if (result != null) {
            page = JsonUtils.jsonToPojo(result, PageInfo.class);
        }else {
            page = playerService.findPlayers(country, pageIndex, pageSize, mark);
            String json = JsonUtils.objectToJson(page);
            redisService.set(country + "_" + pageIndex + "_" + pageSize+"_"+mark, json);
        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("page", page);
        modelAndView.addObject("country", country);
        if (mark == 1) {
            modelAndView.setViewName("player_score");
        } else {
            modelAndView.setViewName("player_assists");
        }
        return modelAndView;
    }
}
