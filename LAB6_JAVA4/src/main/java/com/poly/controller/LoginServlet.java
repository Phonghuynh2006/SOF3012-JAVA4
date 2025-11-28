package com.poly.controller;

import com.poly.dao.UserDAO;
import com.poly.dao.UserDAOImpl;
import com.poly.entity.User;
import com.poly.filter.AuthFilter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAOImpl();
        User user = dao.findById(username);

        if (user == null) {
            req.setAttribute("message", "Invalid username");
        } else if (!user.getPassword().equals(password)) {
            req.setAttribute("message", "Invalid password");
        } else {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);

            String returnUri = (String) session.getAttribute(AuthFilter.SECURITY_URI);
            if (returnUri != null) {
                resp.sendRedirect(returnUri);
                return;
            }
        }

        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}
