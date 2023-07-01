package com.example.DBEC.web;

import com.example.DBEC.entity.Histogram;
import com.example.DBEC.service.HistogramService;
import com.example.DBEC.service.impl.HistogramServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HistogramServlet1", value = "/HistogramServlet1")
public class HistogramServlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 数据添加到集合里面，获取sql数据信息，然后转为json字符串，然后存到list中。

        System.out.println("Histogram-post请求收到");
        request.setCharacterEncoding("utf-8");

        HistogramService service = new HistogramServiceImpl();
        List<Histogram> list = service.findTopClick();

        ObjectMapper mapper = new ObjectMapper(); // 提供java-json相互转换功能的类
        String json = mapper.writeValueAsString(list); // 将list中的对象转换为Json字符串

        System.out.println(json);

        // 将json字符串数据返回给前端
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().write(json);
    }
}
