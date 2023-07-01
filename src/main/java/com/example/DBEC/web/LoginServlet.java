package com.example.DBEC.web;

import com.example.DBEC.entity.User;
import com.example.DBEC.service.UserService;
import com.example.DBEC.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/WEB-INF/X-admin/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("post请求收到");

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // 调用查询业户的业务
        UserService service = new UserServiceImpl();
        User username1 = service.findUserByName(username);
        if (username1 == null) {
            System.out.println("该用户不存在");
//            response.sendRedirect(request.getContextPath() + "/login");
            doGet(request, response);
        } else {
            if (username1.getPassword().equals(password)) {
                System.out.println("登录成功");

                // 登录成功后，将登录对象存储到session中
                HttpSession session = request.getSession();
                session.setAttribute("loginuser", username1);

                // 登录成功后，将登录信息以Cookie发回去
                Cookie cookie1 = new Cookie("loginuser", username1.getNickname());//1。创建
                cookie1.setMaxAge(7 * 24 * 60);//2.设置有效期
                response.addCookie(cookie1);//3.发送到浏览器端

                response.sendRedirect(request.getContextPath() + "/index");
            } else {
                System.out.println("登录失败，密码错误");
//                response.sendRedirect(request.getContextPath() + "/login");
                doGet(request, response);
            }
        }
    }
}
