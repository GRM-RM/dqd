package com.dqd.three.dao;

import com.dqd.three.pojo.User;
import com.dqd.three.pojo.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * @author grm
 */
public interface UserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer id);
    User selectByName(String name);
    User selectByTel(String name);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}