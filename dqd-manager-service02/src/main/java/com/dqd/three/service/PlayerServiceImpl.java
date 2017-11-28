package com.dqd.three.service;

import com.dqd.three.dao.ClubMapper;
import com.dqd.three.dao.LabelMapper;
import com.dqd.three.dao.PlayerMapper;
import com.dqd.three.dto.PlayerDTO;
import com.dqd.three.pojo.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlayerServiceImpl implements PlayerService {

    @Autowired
    private PlayerMapper playerMapper;

    @Autowired
    private ClubMapper clubMapper;

    @Autowired
    private LabelMapper labelMapper;

    @Override
    public void addPlayer(Player player) {

        playerMapper.insert(player);
    }

    @Override
    public PlayerDTO findPlayerList(String labelName,Integer page,Integer rows) {

        List<Player> playerList = new ArrayList<>();
        List<Player> players = new ArrayList<>();
        long total = 0;

        LabelExample example = new LabelExample();
        LabelExample.Criteria criteria = example.createCriteria();
        criteria.andNameLike("%"+labelName+"%");

        List<Label> labelList = labelMapper.selectByExample(example);
        for (Label label : labelList) {

            ClubExample example1 = new ClubExample();
            ClubExample.Criteria criteria1 = example1.createCriteria();
            criteria1.andCountryLike("%"+label.getName()+"%");

            List<Club> clubList = clubMapper.selectByExample(example1);

            for (Club club : clubList) {

                PageHelper.startPage(page,rows);
                PlayerExample playerExample = new PlayerExample();
                PlayerExample.Criteria criteria2 = playerExample.createCriteria();
                criteria2.andClubIdEqualTo(club.getId());

                players = playerMapper.selectByExample(playerExample);
                for (Player player : players) {

                    player.setClubName(club.getName());
                    playerList.add(player);
                }
            }
            PageInfo<Player> playerPageInfo = new PageInfo<>(players);
            total = playerPageInfo.getTotal();
        }

        PlayerDTO playerDTO = new PlayerDTO();
        playerDTO.setRows(playerList);
        playerDTO.setTotal(total);
        return playerDTO;
    }

    @Override
    public void updatePlayer(Player player) {

        playerMapper.updateByPrimaryKey(player);
    }

    @Override
    public void deletePlayer(Integer id) {

        playerMapper.deleteByPrimaryKey(id);
    }
}
