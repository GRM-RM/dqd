package com.dqd.three.service.serviceImpl;

import com.dqd.three.dao.UserMapper;
import com.dqd.three.pojo.User;
import com.dqd.three.service.UserService;
import com.dqd.three.util.Constants;
import com.dqd.three.util.Funcs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Houxudong
 **/
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public void register(User user) {
        String s = Funcs.MD5(user.getPassword() + Constants.PASSWORD_SALT_KEY);
        user.setPassword(s);
        userMapper.insertSelective(user);
    }

    @Override
    public User getUserByName(String usernname) {
        return userMapper.selectByName(usernname);
    }

    @Override
    public User getUserByTel(String userTel) {
        User user = userMapper.selectByTel(userTel);
        return user;
    }

    @Override
    public User getUserById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User doLoginByName(String username, String password) throws Exception{
            User user = userMapper.selectByName(username);
            if(Funcs.MD5(password+Constants.PASSWORD_SALT_KEY).equals(user.getPassword())){
                return user;
            }
            throw new Exception("用户名或密码错误");
    }

    @Override
    public User doLoginByTel(String userTel) {
        return null;
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKeySelective(user);
    }
}
