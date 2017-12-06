package com.dqd.three.dao.impl;

import com.dqd.three.dao.TopicPojoDao;
import com.dqd.three.pojo.TopicPojo;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import java.util.List;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class TopicPojoDaoImpl implements TopicPojoDao {

    private MongoTemplate mongoTemplate;

    public void setMongoTemplate(MongoTemplate mongoTemplate) {
        this.mongoTemplate = mongoTemplate;
    }

    @Override
    public void addTopicPojo(TopicPojo topicPojo) {
        mongoTemplate.insert(topicPojo);
    }

    @Override
    public List<TopicPojo> findAll() {
        Query query = new Query();
        return mongoTemplate.find(query,TopicPojo.class);
    }

    @Override
    public List<TopicPojo> findByUsername(String username) {
        Query query = new Query();
        query.addCriteria(Criteria.where("username").is(username));
        return mongoTemplate.find(query,TopicPojo.class);
    }
}
