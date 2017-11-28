package com.dqd.three.service;

import com.dqd.three.dto.MatchDTO;
import com.dqd.three.pojo.Match;

public interface MatchService {

    void addMatch(Match match);

    MatchDTO findMatchList(Integer page, Integer rows);

    void updateMatch(Match match);

    void deleteMatch(Integer id);
}
