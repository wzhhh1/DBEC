package com.example.DBEC.service;

import com.example.DBEC.entity.*;

import java.util.List;

public interface HistogramService {
    // 查询top_clock
    List<Histogram> findTopClick();
    // 查询top_conversion
    List<Histogram2> findTopConversion();
    // 查询age_group
    List<Piechart1> findAgeGroup();
    // 查询gender_rate
    List<Piechart2> findGenderRate();
    // 查询month
    List<month> findMonth();
    // 查询price_segment
    List<Piechart3> findPriceSegment();
    // 查询price_segment
    List<UserList> finduserlist();
}
