package com.dqd.three.service.serviceImpl;

import com.dqd.three.service.RedisService;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.concurrent.TimeUnit;

/**
 * @Houxudong
 **/
@Service
public class RedisServiceImpl implements RedisService {
    //创建连接池
    JedisPool jedisPool = new JedisPool("10.0.127.170",6379);
    //找连接池要具体的对象
    Jedis resource = jedisPool.getResource();
    @Override
    public void set(String key, String value) {
        resource.set(key,value);
        expire(key);
    }

    @Override
    public String get(String key) {
        return resource.get(key);
    }

    @Override
    public void del(String key) {
        resource.del(key);
    }

    @Override
    public Long incr(String key) {
        return resource.incr(key);
    }

    @Override
    public void expire(String key) {
        resource.expire(key,180);
    }

    @Override
    public void setMaxTime(String key) {
        resource.expire(key,24*60*60);
    }

}
