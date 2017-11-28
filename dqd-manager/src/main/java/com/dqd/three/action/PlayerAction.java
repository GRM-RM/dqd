package com.dqd.three.action;

import com.dqd.three.dto.ClubDTO;
import com.dqd.three.dto.PlayerDTO;
import com.dqd.three.pojo.Player;
import com.dqd.three.service.PlayerService;
import org.omg.CORBA.OBJ_ADAPTER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.applet.resources.MsgAppletViewer;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/player")
public class PlayerAction {

    @Autowired
    private PlayerService playerService;

    @RequestMapping("/playerAdd")
    @ResponseBody
    public Map<String,Object> addPlayer(Player player,Integer cid,String image){

        Map<String,Object> result = new HashMap<>();

        player.setClubId(cid);
        player.setAvatar(image);
        playerService.addPlayer(player);
        result.put("status",200);
        return result;
    }

    @RequestMapping("/playerEdit")
    public String goPlayerEdit(){

        return "/player/playerEdit";
    }

    @RequestMapping("/playerDel")
    @ResponseBody
    public Map<String,Object> playerDel(Integer[] ids){

        Map<String,Object> result = new HashMap<>();

        for (Integer id : ids) {
            playerService.deletePlayer(id);
        }

        result.put("status",200);
        return result;
    }

    @RequestMapping("/playerUpdate")
    @ResponseBody
    public Map<String,Object> playerEdit(Player player,Integer cid,String image){

        Map<String,Object> result = new HashMap<>();

        if (cid != null){

            player.setClubId(cid);
        }
        if (image != null && image != ""){

            player.setAvatar(image);
        }

        playerService.updatePlayer(player);


        result.put("status",200);
        return result;
    }

    @RequestMapping("/{playerPage}")
    @ResponseBody
    public PlayerDTO showPage(@PathVariable String playerPage, Integer page, Integer rows){

        if ("CSLList".equals(playerPage)){

            PlayerDTO playerDTO = playerService.findPlayerList("中超", page, rows);
            return playerDTO;
        }else if("LALList".equals(playerPage))
        {

            PlayerDTO playerDTO = playerService.findPlayerList("西甲", page, rows);
            return playerDTO;
        }else if("PLLList".equals(playerPage))
        {

            PlayerDTO playerDTO = playerService.findPlayerList("英超", page, rows);
            return playerDTO;
        }else if("BDLList".equals(playerPage))
        {

            PlayerDTO playerDTO = playerService.findPlayerList("德甲", page, rows);
            return playerDTO;
        }else if("SAList".equals(playerPage))
        {

            PlayerDTO playerDTO = playerService.findPlayerList("意甲", page, rows);
            return playerDTO;
        }else if("L1List".equals(playerPage))
        {

            PlayerDTO playerDTO = playerService.findPlayerList("法甲", page, rows);
            return playerDTO;
        }
        return null;
    }

}
