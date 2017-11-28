package com.dqd.three.service;

public interface RedisService {
    void set(String key, String value);
    String get(String key);
    void del(String key);
    Long incr(String key);
    void expire(String key);
    void setMaxTime(String key);
}
