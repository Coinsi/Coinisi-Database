package com.kuang.service;
import com.kuang.pojo.User;


public interface UserService {
    //增加一个User
    int addUser(User user);
    //根据id删除一个User
    int deleteUserById(int id);
    //更新User
    int updateUser(User user);
    //根据id查询,返回一个Book
    User queryUserById(int id);
    //
    User queryUserByusername(String username,String password);

}
