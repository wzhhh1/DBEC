package com.example.DBEC.service.impl;
import com.example.DBEC.dao.HistogramDao;
import com.example.DBEC.dao.impl.HistogramDaoImpl;
import com.example.DBEC.entity.*;
import com.example.DBEC.service.HistogramService;

import java.util.List;

public class HistogramServiceImpl implements HistogramService {
    private HistogramDao dao = new HistogramDaoImpl();

    @Override
    public List<Histogram> findTopClick() {
        return dao.findTopClick();
    }

    @Override
    public List<Histogram2> findTopConversion() {
        return dao.findTopConversion();
    }

    @Override
    public List<Piechart1> findAgeGroup() {
        return dao.findAgeGroup();
    }

    @Override
    public List<Piechart2> findGenderRate() {
        return dao.findGenderRate();
    }

    @Override
    public List<month> findMonth() {
        return dao.findMonth();
    }

    @Override
    public List<Piechart3> findPriceSegment() {
        return dao.findPriceSegment();
    }

    @Override
    public List<UserList> finduserlist() {
        return dao.finduserlist();
    }
}
