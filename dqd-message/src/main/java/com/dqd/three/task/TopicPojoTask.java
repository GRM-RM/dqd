package com.dqd.three.task;

import com.dqd.dubbo.service.DubboRedisService;
import com.dqd.three.pojo.TopicPojo;
import com.dqd.three.service.TopicPojoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class TopicPojoTask {

    private TopicPojoService topicPojoService;

    private DubboRedisService dubboRedisService;

    @Autowired
    private MongoTemplate mongoTemplate;

    //定时存入mongo数据库
    public void countTopic(){
        Long llen = dubboRedisService.getLlen("login");
        for (Long i = 0L; i < llen; i++) {
            String msg = dubboRedisService.get("login");
            String username = msg.substring(msg.indexOf(":") + 1, msg.indexOf("在"));
            TopicPojo topicPojo = new TopicPojo();
            topicPojo.setUsername(username);
            topicPojo.setMessage(msg);
            mongoTemplate.insert(topicPojo);
        }
    }
}
