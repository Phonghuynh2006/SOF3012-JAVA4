package com.poly.controller;

import java.io.IOException;

import com.poly.model.User;
import com.poly.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterController extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirm = req.getParameter("confirm");

        // Validate mật khẩu
        if (!password.equals(confirm)) {
            req.setAttribute("message", "❌ Mật khẩu xác nhận không trùng khớp!");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
            return;
        }

        // Check trùng username
        if (userService.findByUsername(username) != null) {
            req.setAttribute("message", "❌ Tên đăng nhập đã tồn tại!");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
            return;
        }

        // Tạo user mới
        User u = new User();
        u.setUsername(username);
        u.setPassword(password);
        u.setFullname(fullname);
        u.setEmail(email);
        u.setIsAdmin(false);
        u.setActivated(true);

        userService.create(u);

        req.setAttribute("message", "✔ Đăng ký thành công! Hãy đăng nhập.");
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}
