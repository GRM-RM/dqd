package com.dqd.three.dao;

import com.dqd.three.pojo.Match;
import com.dqd.three.pojo.MatchExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MatchMapper {
    int countByExample(MatchExample example);

    int deleteByExample(MatchExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Match record);

    int insertSelective(Match record);

    List<Match> selectByExample(MatchExample example);

    Match selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Match record, @Param("example") MatchExample example);

    int updateByExample(@Param("record") Match record, @Param("example") MatchExample example);

    int updateByPrimaryKeySelective(Match record);

    int updateByPrimaryKey(Match record);

    List<Match> findByCountry(String country);

    List<Match> findByRound(@Param("country") String country,@Param("round") Integer round);

    List<Match> findOneDay(@Param("startTime") Date startTime, @Param("endTime") Date endTime,@Param("country") String country);
}