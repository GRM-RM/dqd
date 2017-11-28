package com.dqd.three.action;

import com.dqd.three.dto.MatchDTO;
import com.dqd.three.pojo.Match;
import com.dqd.three.service.MatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/match")
public class matchAction {

    @Autowired
    private MatchService matchService;

    @RequestMapping("/matchAdd")
    @ResponseBody
    public Map<String,Object> addMatch(Match match,String startTime01){

        Map<String,Object> result = new HashMap<>();

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date =  format.parse(startTime01);
            match.setStartTime(startTime01);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        matchService.addMatch(match);

        result.put("status",200);
        return result;
    }

    @RequestMapping("/matchList")
    @ResponseBody
    public MatchDTO findMatchList(Integer page, Integer rows){

        MatchDTO matchList = matchService.findMatchList(page, rows);

        return matchList;
    }

    @RequestMapping("/matchEdit")
    public String goMatchEdit(){

        return "/match/matchEdit";
    }

    @RequestMapping("/matchUpdate")
    @ResponseBody
    public Map<String,Object> matchEdit(Match match,String startTime01){

        if (startTime01 != null && startTime01 != ""){

            match.setStartTime(startTime01);
        }
        Map<String,Object> result = new HashMap<>();

        matchService.updateMatch(match);

        result.put("status",200);
        return result;
    }

    @RequestMapping("/matchDel")
    @ResponseBody
    public Map<String,Object> matchDel(Integer[] ids){

        Map<String,Object> result = new HashMap<>();

        for (Integer id : ids) {
            matchService.deleteMatch(id);
        }

        result.put("status",200);
        return result;
    }


}
