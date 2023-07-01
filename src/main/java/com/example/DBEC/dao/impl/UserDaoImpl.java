package com.example.DBEC.dao.impl;

import com.example.DBEC.dao.UserDao;
import com.example.DBEC.entity.User;
import com.example.DBEC.utils.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    private QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
    @Override
    public List<User> findAllUsers() {
        String sql = "SELECT * FROM user";
        try {
            return runner.query(sql,new BeanListHandler<>(User.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public User findUserById(int userId) {
        String sql = "SELECT * FROM user WHERE id=?";
        try {
            return runner.query(sql,new BeanHandler<>(User.class),userId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public User findUserByName(String username) {
        String sql = "SELECT * FROM user WHERE name=?";
        try {
            return runner.query(sql,new BeanHandler<>(User.class),username);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int addUser(User user) {
        String sql = " INSERT INTO user(name,`password`,nickname,mail,mobile,role)" +
                "VALUE(?,?,?,?,?,?)";
        try {
            return runner.update(sql,user.getName(),user.getPassword(),user.getNickname(),
                    user.getMail(),user.getMobile(),user.getRole());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public  int updateUser(User user) {
        String sql = "UPDATE user SET name=?,password=?, " +
                "nickname=?,mail=?,mobile=?, role=? " +
                "WHERE id=?";
        try {
            return runner.update(sql,user.getName(),user.getPassword(),user.getNickname(),user.getMail(),user.getMobile(),user.getRole(),user.getId());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int deleteUser(int userId) {
        String sql = "DELETE FROM user WHERE id=?";
        try {
            return runner.update(sql,userId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<User> getUser(User user) {
        String sql = "SELECT * FROM user WHERE 1=1";
        List<Object> params = new ArrayList<>();
        // 根据查询参数拼接SQL语句
        if (user != null) {
            if (user.getId() != 0) {
                sql += " AND id=?";
                params.add(user.getId());
            }
            if (user.getName() != null && user.getName().length() > 0) {
                sql += " AND name LIKE %?%";
                params.add(user.getName());
            }
            if (user.getMobile() != null && user.getMobile().length() > 0) {
                sql += " AND mobile LIKE %?%";
                params.add(user.getMobile());
            }
            if (user.getMail() != null && user.getMail().length() > 0) {
                sql += " AND mail LIKE %?%";
                params.add(user.getMail());
            }
            if (user.getRole() != null && user.getRole().length() > 0) {
                sql += " AND role LIKE %?%";
                params.add(user.getRole());
            }
            if (user.getNickname() != null && user.getNickname().length() > 0) {
                sql += " AND nickname LIKE %?%";
                params.add(user.getNickname());
            }
            // 其他查询条件可以仿照上面续写，也可以根据实际支持的查询条件来调整
        }
        try {
            return runner.query(sql, new BeanListHandler<>(User.class), params.toArray());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

