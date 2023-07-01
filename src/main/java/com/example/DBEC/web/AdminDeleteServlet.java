package com.example.DBEC.web;

import com.example.DBEC.service.UserService;
import com.example.DBEC.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminDeleteServlet", value = "/admindelete")
public class AdminDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1、要知道现在点击的是谁
        String strid = request.getParameter("id");
        int id = Integer.parseInt(strid);

        // 2、调用业务进行删除
        UserService user = new UserServiceImpl();
        user.deleteUser(id);

        // 3、删除完了重新进首页
        response.sendRedirect(request.getContextPath() + "/adminlist");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
