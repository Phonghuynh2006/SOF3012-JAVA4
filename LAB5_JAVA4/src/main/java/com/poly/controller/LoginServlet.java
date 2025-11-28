package com.poly.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.poly.dao.UserDAO;
import com.poly.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    UserDAO dao = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Khi người dùng truy cập /login bằng GET => load form login
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        User u = dao.findById(user);

        if (u == null) {
            req.setAttribute("msg", "Sai username!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
            return;
        }

        if (!u.getPassword().equals(pass)) {
            req.setAttribute("msg", "Sai password!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
            return;
        }

        // Lưu session
        req.getSession().setAttribute("user", u);

        // CHUYỂN URL => home.jsp
        resp.sendRedirect("home.jsp");
    }
}
