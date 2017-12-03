package com.dqd.three.dubbo.service;

/**
 * A unique of the lion
 *
 * @author grm
 */
public interface RedisService {
     String get(String key);

     void set(String key,String value);

}
