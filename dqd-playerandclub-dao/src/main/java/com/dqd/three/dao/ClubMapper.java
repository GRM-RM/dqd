package com.dqd.three.dao;

import com.dqd.three.pojo.Club;
import com.dqd.three.pojo.ClubExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ClubMapper {
    int countByExample(ClubExample example);

    int deleteByExample(ClubExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Club record);

    int insertSelective(Club record);

    List<Club> selectByExample(ClubExample example);

    Club selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Club record, @Param("example") ClubExample example);

    int updateByExample(@Param("record") Club record, @Param("example") ClubExample example);

    int updateByPrimaryKeySelective(Club record);

    int updateByPrimaryKey(Club record);
}