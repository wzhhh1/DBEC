package com.example.DBEC.web;

import com.example.DBEC.entity.User;
import com.example.DBEC.service.UserService;
import com.example.DBEC.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminAddServlet", value = "/admin-add")
public class AdminAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/X-admin/admin-add.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("post请求收到adminadd");

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        String mail = request.getParameter("mail");
        String mobile = request.getParameter("mobile");
        String role = request.getParameter("role");
        //System.out.println(username + password + nickname + mail + mobile + role );

        User adduser = new User();
        adduser.setName(username);
        adduser.setPassword(password);
        adduser.setNickname(nickname);
        adduser.setMail(mail);
        adduser.setMobile(mobile);
        adduser.setRole(role);

        UserService service = new UserServiceImpl();
        int result = service.addUser(adduser);
        if ( result == 1 ) {
            System.out.println("创建用户成功！");
        }else{
            System.out.println("创建用户失败");
        }

    }
}
