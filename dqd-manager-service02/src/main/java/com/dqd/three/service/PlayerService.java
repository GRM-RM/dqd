package com.dqd.three.service;

import com.dqd.three.dto.PlayerDTO;
import com.dqd.three.pojo.Player;

public interface PlayerService {

    void addPlayer(Player player);

    PlayerDTO findPlayerList(String labelName,Integer page,Integer rows);

    void updatePlayer(Player player);

    void deletePlayer(Integer id);
}
