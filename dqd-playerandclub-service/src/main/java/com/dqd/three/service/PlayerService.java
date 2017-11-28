package com.dqd.three.service;

import com.dqd.three.pojo.Player;
import com.github.pagehelper.PageInfo;

import java.util.List;


/**
 * @author grm
 */
public interface PlayerService {
    PageInfo<Player> findPlayers(String country, Integer pageIndex, Integer pageSize,Integer mark);
}
