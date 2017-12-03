package com.dqd.three.service;

import com.dqd.three.pojo.User;

public interface UserService {
    void register(User user);
    User getUserByName(String usernname);
    User getUserByTel(String userTel);
    User getUserById(Integer id);
    User doLoginByName(String username,String password) throws Exception;
    User doLoginByTel(String userTel);
    void updateUser(User user);
}
