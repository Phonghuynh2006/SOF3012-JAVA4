package com.poly.filter;

import java.io.IOException;

import com.poly.entity.User;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter({
    "/account/change-password",
    "/account/edit-profile",
    "/video/like/*",
    "/video/share/*",
    "/admin/*"
})
public class AuthFilter extends HttpFilter implements Filter {

    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
            throws IOException, ServletException {

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        String uri = req.getRequestURI();

        // CHƯA LOGIN → CHUYỂN TỚI LOGIN
        if (user == null) {
            session.setAttribute("securityUri", uri);
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        // TRUY CẬP ADMIN MÀ KHÔNG PHẢI ADMIN
        if (uri.contains("/admin/") && !user.isAdmin()) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        // Cho qua filter
        chain.doFilter(req, resp);
    }

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}
