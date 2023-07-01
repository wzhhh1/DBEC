package com.example.DBEC.dao.impl;

import com.example.DBEC.dao.HistogramDao;
import com.example.DBEC.entity.*;
import com.example.DBEC.utils.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class HistogramDaoImpl implements HistogramDao {
    private QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
    @Override
    public List<Histogram> findTopClick() {
        String sql = "SELECT * FROM top_clicks";
        try {
            return runner.query(sql,new BeanListHandler<>(Histogram.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Histogram2> findTopConversion() {
        String sql = "SELECT * FROM top_conversion_rate";
        try {
            return runner.query(sql,new BeanListHandler<>(Histogram2.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Piechart1> findAgeGroup() {
        String sql = "SELECT * FROM age_segment";
        try {
            return runner.query(sql,new BeanListHandler<>(Piechart1.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Piechart2> findGenderRate() {
        String sql = "SELECT * FROM gender_rate";
        try {
            return runner.query(sql,new BeanListHandler<>(Piechart2.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<month> findMonth() {
        String sql = "SELECT * FROM month";
        try {
            return runner.query(sql,new BeanListHandler<>(month.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Piechart3> findPriceSegment() {
        String sql = "SELECT * FROM price_segment";
        try {
            return runner.query(sql,new BeanListHandler<>(Piechart3.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<UserList> finduserlist() {
        String sql = "SELECT * FROM user_list";
        try {
            return runner.query(sql,new BeanListHandler<>(UserList.class));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
