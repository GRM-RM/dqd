package com.dqd.dubbo.service;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class DubboRedisServiceImpl implements DubboRedisService {

    private JedisPool jedisPool;

    public void setJedisPool(JedisPool jedisPool) {
        this.jedisPool = jedisPool;
    }

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
