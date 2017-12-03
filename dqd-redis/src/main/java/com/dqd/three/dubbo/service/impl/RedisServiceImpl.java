package com.dqd.three.dubbo.service.impl;

import com.dqd.three.dubbo.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class RedisServiceImpl implements RedisService {

    @Autowired
    private JedisPool jedisPool;

    @Override
    public String get(String key) {
        Jedis jedis = jedisPool.getResource();
        return jedis.get(key);

    }

    @Override
    public void set(String key, String value) {
        Jedis jedis = jedisPool.getResource();
        jedis.set(key,value);
    }
}
