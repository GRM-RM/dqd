package com.dqd.three.service;

import com.dqd.three.pojo.Match;

import java.util.Date;
import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
public interface MatchService {

    List<Match> findByCountry(String country);

    List<Match> findByRound(String country,Integer round);

    List<Match> findOneDay(Date startTime,String country)throws Exception;
}
