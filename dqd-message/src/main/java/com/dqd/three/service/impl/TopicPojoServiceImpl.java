package com.dqd.three.service.impl;

import com.dqd.three.dao.TopicPojoDao;
import com.dqd.three.pojo.TopicPojo;
import com.dqd.three.service.TopicPojoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
@Service
public class TopicPojoServiceImpl implements TopicPojoService {

    @Autowired
    private TopicPojoDao topicPojoDao;

    @Override
    public void addTopicPojo(TopicPojo topicPojo) {
        topicPojoDao.addTopicPojo(topicPojo);
    }

    @Override
    public List<TopicPojo> findAll() {
        return topicPojoDao.findAll();
    }

    @Override
    public List<TopicPojo> findByUsername(String username) {
        return topicPojoDao.findByUsername(username);
    }
}
