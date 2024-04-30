package com.kuang.dao;

import com.kuang.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //增加一个User
    int addUser(User user);

    //根据id删除一个User
    int deleteUserById(int id);

    //更新User
    int updateUser(User user);

    //根据id查询,返回一个User
    User queryUserById(int id);

    User queryUserByusername(@Param("username") String username, @Param("password")String password);




}
