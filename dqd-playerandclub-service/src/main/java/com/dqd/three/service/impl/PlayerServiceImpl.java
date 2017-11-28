package com.dqd.three.service.impl;

import com.dqd.three.dao.PlayerMapper;
import com.dqd.three.pojo.Player;
import com.dqd.three.service.PlayerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
@Service
public class PlayerServiceImpl implements PlayerService {

    @Autowired
    private PlayerMapper playerMapper;


    @Override
    public PageInfo<Player> findPlayers(String country, Integer pageIndex, Integer pageSize,Integer mark) {
        PageHelper.startPage(pageIndex,pageSize);
        List<Player> players = playerMapper.findPlayers(country,mark);
        for (int i = 0; i < players.size(); i++) {
            players.get(i).setId((pageIndex-1)*pageSize+i+1);
        }
        PageInfo<Player> page=new PageInfo<Player>(players,3);

        return page;
    }
}
