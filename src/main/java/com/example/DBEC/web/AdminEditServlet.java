package com.example.DBEC.web;

import com.example.DBEC.entity.User;
import com.example.DBEC.service.UserService;
import com.example.DBEC.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminEditServlet", value = "/adminedit")
public class AdminEditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strid = request.getParameter("id");
        int id = Integer.parseInt(strid);
        System.out.println(strid);
        // 2、根据id去查询文章的内容
        UserService service = new UserServiceImpl();
        User user = service.findUserById(id);
        // 3、转发到JSP去显示
        request.setAttribute("user", user);
        request.getRequestDispatcher("WEB-INF/X-admin/admin-edit.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("post请求收到adminedit");

        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        String mail = request.getParameter("mail");
        String mobile = request.getParameter("mobile");
        String role = request.getParameter("role");
        String strid = request.getParameter("id");
        int id = Integer.parseInt(strid);

        User edituser = new User();
        edituser.setName(username);
        edituser.setPassword(password);
        edituser.setNickname(nickname);
        edituser.setMail(mail);
        edituser.setMobile(mobile);
        edituser.setRole(role);
        edituser.setId(id);

        System.out.println(username + password + nickname + mail + mobile + role + id);

        UserService service = new UserServiceImpl();
        int result = service.updateUser(edituser);
        if ( result == 1 ) {
            System.out.println("修改用户成功！");
        }else{
            System.out.println("修改用户失败");
        }

    }
}
