package com.dqd.three.service;

import com.dqd.three.pojo.TopicPojo;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
public interface TopicPojoService {
    void addTopicPojo(TopicPojo topicPojo);

    List<TopicPojo> findAll();

    List<TopicPojo> findByUsername(String username);
}
