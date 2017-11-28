package com.dqd.three.service.impl;

import com.dqd.three.TimeUtils;
import com.dqd.three.dao.MatchMapper;
import com.dqd.three.pojo.Match;
import com.dqd.three.pojo.MatchExample;
import com.dqd.three.service.MatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
@Service
public class MatchServiceImpl implements MatchService {

    @Autowired
    private MatchMapper matchMapper;

    @Override
    public List<Match> findByCountry(String country) {
        return matchMapper.findByCountry(country);
    }

    @Override
    public List<Match> findByRound(String country, Integer round) {
        return matchMapper.findByRound(country, round);
    }

    @Override
    public List<Match> findOneDay(Date startTime,String country) throws Exception {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long end = sdf.parse(sdf.format(startTime).toString()).getTime() + 3600 * 24 * 1000;
        startTime=sdf.parse(sdf.format(startTime));
        Date endTime=new Date(end);
        List<Match> matches = matchMapper.findOneDay(startTime,endTime,country);
        return matches;
    }
}
