package com.kuang.service;

import com.kuang.dao.BookMapper;
import com.kuang.dao.UserMapper;
import com.kuang.pojo.Books;
import com.kuang.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public class UserServiceImpl implements UserService{
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public User queryUserByusername(String username,String password){
        return userMapper.queryUserByusername(username,password);
    };

}
