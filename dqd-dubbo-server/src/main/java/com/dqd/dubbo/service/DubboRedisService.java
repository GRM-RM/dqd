package com.dqd.dubbo.service;

/**
 * A unique of the lion
 *
 * @author grm
 */
public interface DubboRedisService {

    String get(String key);

    void set(String key,String value);

    void lpush(String key,String value);

    String rpop(String key);

    Long getLlen(String key);



}
