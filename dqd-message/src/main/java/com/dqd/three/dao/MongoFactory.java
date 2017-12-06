package com.dqd.three.dao;

import com.mongodb.MongoClient;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class MongoFactory implements FactoryBean<MongoClient> ,InitializingBean,DisposableBean{

    private MongoClient mongoClient;

    private String host;

    private Integer port;

    public void setHost(String host) {
        this.host = host;
    }

    public void setPort(Integer port) {
        this.port = port;
    }

    @Override
    public void destroy() throws Exception {

    }

    @Override
    public MongoClient getObject() throws Exception {
        return null;
    }

    @Override
    public Class<?> getObjectType() {
        return null;
    }

    @Override
    public boolean isSingleton() {
        return false;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        mongoClient=new MongoClient(host,port);
    }
}
