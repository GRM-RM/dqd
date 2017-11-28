package com.dqd.three.service.impl;

import com.dqd.three.dao.ClubMapper;
import com.dqd.three.pojo.Club;
import com.dqd.three.pojo.ClubExample;
import com.dqd.three.service.ClubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */

@Service
public class ClubServiceImpl implements ClubService {

    @Autowired
    private ClubMapper clubMapper;

    @Override
    public List<Club> findByCountry(String country) {
        ClubExample clubExample=new ClubExample();

        ClubExample.Criteria criteria=clubExample.createCriteria();

        criteria.andCountryEqualTo(country);
        clubExample.setOrderByClause("scores desc");

        List<Club> clubs=clubMapper.selectByExample(clubExample);

        return clubs;
    }
}
