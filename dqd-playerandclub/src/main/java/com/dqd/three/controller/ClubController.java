package com.dqd.three.controller;

import com.dqd.three.pojo.Club;
import com.dqd.three.service.ClubService;
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

    @RequestMapping("/list")
    @ResponseBody
    public ModelAndView showClub(@RequestParam(required = false,defaultValue = "中超") String country){
        ModelAndView modelAndView=new ModelAndView();
        List<Club> list=clubService.findByCountry(country);
        modelAndView.addObject("list",list);
        modelAndView.addObject("country",country);
        modelAndView.setViewName("club");
        return modelAndView;
    }
}
