package com.dqd.three.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexAction {

    @RequestMapping("/")
    public String showPage01(){

        return "/login/index";
    }
    @RequestMapping("/failList")
    public String showPage02(){

        return "/news/failList";
    }
    @RequestMapping("/passList")
    public String showPage03(){

        return "/news/passList";
    }
    @RequestMapping("/rejectList")
    public String showPage04(){

        return "/news/rejectList";
    }
    @RequestMapping("/overdueList")
    public String showPage05(){

        return "/news/overdueList";
    }
    @RequestMapping("/clubAdd")
    public String showPage06(){

        return "/club/clubAdd";
    }
    @RequestMapping("/CSLList")
    public String showPage07(){

        return "/club/CSLList";
    }
    @RequestMapping("/LALList")
    public String showPage08(){

        return "/club/LALList";
    }
    @RequestMapping("/PLLList")
    public String showPage09(){

        return "/club/PLLList";
    }
    @RequestMapping("/BDLList")
    public String showPage10(){

        return "/club/BDLList";
    }
    @RequestMapping("/SAList")
    public String showPage11(){

        return "/club/SAList";
    }
    @RequestMapping("/L1List")
    public String showPage12(){

        return "/club/L1List";
    }
    @RequestMapping("/playerAdd")
    public String showPage13(){

        return "/player/playerAdd";
    }
    @RequestMapping("/CSLPlayerList")
    public String showPage14(){

        return "/player/CSLPlayerList";
    }
    @RequestMapping("/LALPlayerList")
    public String showPage15(){

        return "/player/LALPlayerList";
    }
    @RequestMapping("/PLLPlayerList")
    public String showPage16(){

        return "/player/PLLPlayerList";
    }
    @RequestMapping("/BDLPlayerList")
    public String showPage17(){

        return "/player/BDLPlayerList";
    }
    @RequestMapping("/SAPlayerList")
    public String showPage18(){

        return "/player/SAPlayerList";
    }

    @RequestMapping("/L1PlayerList")
    public String showPage19(){

        return "/player/L1PlayerList";
    }


    @RequestMapping("/matchAdd")
    public String showPage20(){

        return "/match/matchAdd";
    }

    @RequestMapping("/matchList")
    public String showPage21(){

        return "/match/matchList";
    }

    @RequestMapping("/commentList")
    public String showPage22(){

        return "/comment/commentList";
    }

}
