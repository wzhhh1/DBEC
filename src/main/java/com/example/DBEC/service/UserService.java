package com.example.DBEC.service;

import com.example.DBEC.entity.User;

import java.util.List;

public interface UserService {
    // 查询所有用户
    List<User> findAllUsers();
    // 根据用户ID查询用户信息
    User findUserById(int userId);
    // 根据用户名查询用户信息
    User findUserByName(String username);
    // 添加用户
    int addUser(User user);
    // 更新用户
    int updateUser(User user);
    // 删除用户
    int deleteUser(int userId);
    //导出用户信息
    List<User> getUser(User user);
}
