package com.poly.filter;

import java.io.IOException;

import com.poly.dao.LogDAO;
import com.poly.entity.User;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class AppFilter implements Filter {

    LogDAO logdao = new LogDAO();

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;

        // Set UTF-8
        request.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        // Ghi log nếu có user đăng nhập
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            logdao.create(user.getUsername(), request.getRequestURI());
        }

        chain.doFilter(req, resp);
    }
}
