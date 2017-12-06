package com.dqd.three.dao;

import com.dqd.three.pojo.TopicPojo;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
public interface TopicPojoDao {
    void addTopicPojo(TopicPojo topicPojo);

    List<TopicPojo> findAll();

    List<TopicPojo> findByUsername(String username);
}
