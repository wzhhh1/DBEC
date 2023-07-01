package com.example.DBEC.web;

import com.example.DBEC.entity.Histogram2;
import com.example.DBEC.service.HistogramService;
import com.example.DBEC.service.impl.HistogramServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HistogramServlet2", value = "/HistogramServlet2")
public class HistogramServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 数据添加到集合里面，获取sql数据信息，然后转为json字符串，然后存到list中。
        //这里把“商家id”和“点击量”作为两个属性封装在一个Histogram类里，
        //每个Product类的对象都可以看作是一个类别（X轴坐标值）与销量（Y轴坐标值）的集合。
        System.out.println("Histogram-post2请求收到");
        request.setCharacterEncoding("utf-8");

        HistogramService service = new HistogramServiceImpl();
//        List<Histogram2> list = service.findAllDatas2();
        List<Histogram2> list = service.findTopConversion();

        ObjectMapper mapper = new ObjectMapper(); // 提供java-json相互转换功能的类
        String json = mapper.writeValueAsString(list); // 将list中的对象转换为Json字符串

        System.out.println(json);

        // 将json字符串数据返回给前端
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
}
