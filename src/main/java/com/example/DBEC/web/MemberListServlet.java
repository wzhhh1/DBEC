package com.example.DBEC.web;

import com.example.DBEC.entity.User;
import com.example.DBEC.entity.UserList;
import com.example.DBEC.service.HistogramService;
import com.example.DBEC.service.UserService;
import com.example.DBEC.service.impl.HistogramServiceImpl;
import com.example.DBEC.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MemberListServlet", value = "/memberlist")
public class MemberListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HistogramService service = new HistogramServiceImpl();
        List<UserList> list = service.finduserlist();
        request.setAttribute("list",list);

        request.getRequestDispatcher("WEB-INF/X-admin/member-list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
