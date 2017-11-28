package com.dqd.three.controller;

import com.dqd.three.pojo.Player;
import com.dqd.three.service.PlayerService;
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

    @RequestMapping("/list")
    public ModelAndView showPlay(String country, @RequestParam(required = false ,defaultValue = "1") Integer pageIndex,
                                 @RequestParam(required = false ,defaultValue = "10") Integer pageSize, Integer mark){

        PageInfo<Player> page = playerService.findPlayers(country, pageIndex, pageSize,mark);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("page",page);
        modelAndView.addObject("country",country);
        if(mark==1){
            modelAndView.setViewName("player_score");
        }else{
            modelAndView.setViewName("player_assists");
        }
        return modelAndView;
    }
}
