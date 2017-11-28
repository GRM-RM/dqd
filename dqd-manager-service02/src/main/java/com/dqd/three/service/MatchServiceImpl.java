package com.dqd.three.service;

import com.dqd.three.dao.MatchMapper;
import com.dqd.three.dto.MatchDTO;
import com.dqd.three.pojo.Match;
import com.dqd.three.pojo.MatchExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MatchServiceImpl implements MatchService {

    @Autowired
    private MatchMapper matchMapper;

    @Override
    public void addMatch(Match match) {

        match.setHomeScore(0);
        match.setVisitedScore(0);

        matchMapper.insert(match);
    }

    @Override
    public MatchDTO findMatchList(Integer page, Integer rows) {

        PageHelper.startPage(page,rows);
        List<Match> matches = matchMapper.selectByExample(new MatchExample());
        PageInfo<Match> pageInfo = new PageInfo<>(matches);
        long total = pageInfo.getTotal();

        MatchDTO matchDTO = new MatchDTO();
        matchDTO.setTotal(total);
        matchDTO.setRows(matches);

        return matchDTO;
    }

    @Override
    public void updateMatch(Match match) {

        matchMapper.updateByPrimaryKey(match);
    }

    @Override
    public void deleteMatch(Integer id) {

        matchMapper.deleteByPrimaryKey(id);
    }
}
