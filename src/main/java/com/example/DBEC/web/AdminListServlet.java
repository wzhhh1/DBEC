package com.example.DBEC.web;

import com.example.DBEC.entity.User;
import com.example.DBEC.service.UserService;
import com.example.DBEC.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminListServlet", value = "/adminlist")
public class AdminListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService service = new UserServiceImpl();
        List<User> list = service.getUser(null);
        request.setAttribute("list",list);

        request.getRequestDispatcher("WEB-INF/X-admin/admin-list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("list-post请求收到");

        request.setCharacterEncoding("utf-8");
        String findbyname = request.getParameter("findbyname");
        System.out.println(findbyname);

        UserService service = new UserServiceImpl();
        User user = service.findUserByName(findbyname);

        request.setAttribute("finduser",user);

        request.getRequestDispatcher("/WEB-INF/pages/admin-list.jsp").forward(request,response);
    }
}
