package com.example.DBEC.service.impl;

import com.example.DBEC.dao.UserDao;
import com.example.DBEC.dao.impl.UserDaoImpl;
import com.example.DBEC.entity.User;
import com.example.DBEC.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();
    @Override
    public List<User> findAllUsers() {
        return dao.findAllUsers();
    }

    @Override
    public User findUserById(int userId) {
        return dao.findUserById(userId);
    }

    @Override
    public User findUserByName(String username) {
        return dao.findUserByName(username);
    }

    @Override
    public int addUser(User user) {
        return dao.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return dao.updateUser(user);
    }

    @Override
    public int deleteUser(int userId) {
        return dao.deleteUser(userId);
    }

    @Override
    public List<User> getUser(User user) {
        return dao.getUser(user);
    }
}
