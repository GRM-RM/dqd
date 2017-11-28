package com.dqd.three.action;

import com.dqd.three.dto.ClubDTO;
import com.dqd.three.pojo.Club;
import com.dqd.three.service.ClubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/club")
public class ClubAction {

    @Autowired
    private ClubService clubService;

    @RequestMapping("/addClub")
    @ResponseBody
    public Map<String,Object> addClub(Integer cid,String name){

        Map<String,Object> result = new HashMap<>();
        clubService.addClub(cid,name);

        result.put("status",200);
        return result;
    }

    @RequestMapping("/clubEdit")
    public String goEdit(){

        return "/club/clubEdit";
    }

    @RequestMapping("/{clubPage}")
    @ResponseBody
    public ClubDTO showPage(@PathVariable String clubPage, Integer page, Integer rows){

        if ("CSLList".equals(clubPage)){

            ClubDTO clubDTO = clubService.findClubList("中超", page, rows);
            return clubDTO;
        }else if("LALList".equals(clubPage))
        {

            ClubDTO clubDTO = clubService.findClubList("西甲", page, rows);
            return clubDTO;
        }else if("PLLList".equals(clubPage))
        {

            ClubDTO clubDTO = clubService.findClubList("英超", page, rows);
            return clubDTO;
        }else if("BDLList".equals(clubPage))
        {

            ClubDTO clubDTO = clubService.findClubList("德甲", page, rows);
            return clubDTO;
        }else if("SAList".equals(clubPage))
        {

            ClubDTO clubDTO = clubService.findClubList("意甲", page, rows);
            return clubDTO;
        }else if("L1List".equals(clubPage))
        {

            ClubDTO clubDTO = clubService.findClubList("法甲", page, rows);
            return clubDTO;
        }
        return null;
    }



    @RequestMapping("/rest/update")
    @ResponseBody
    public Map<String,Object> addClub(Club club,Integer cid){

        Map<String,Object> result = new HashMap<>();

        clubService.UpdateClub(cid,club);

        result.put("status",200);
        return result;
    }

    @RequestMapping("/rest/del")
    @ResponseBody
    public Map<String,Object> delClub(Integer[] ids){

        Map<String,Object> result = new HashMap<>();

        for (Integer id : ids) {

            clubService.delClub(id);
        }

        result.put("status",200);
        return result;
    }

}
