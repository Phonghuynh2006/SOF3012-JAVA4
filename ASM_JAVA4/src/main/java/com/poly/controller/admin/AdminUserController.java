package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;

import com.poly.model.User;
import com.poly.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/admin/users")
public class AdminUserController extends HttpServlet {

    private UserService service = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        String id = req.getParameter("id");

        // ===== LOAD 1 USER ĐỂ SỬA =====
        if ("edit".equals(action) && id != null) {
            User user = service.findById(Integer.valueOf(id));
            req.setAttribute("user", user);
        }

        // ===== LOAD DANH SÁCH USER =====
        List<User> list = service.findAll();
        req.setAttribute("list", list);

        req.getRequestDispatcher("/admin/users.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        String idStr = req.getParameter("id");

        // Dữ liệu form
        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String username = req.getParameter("username");   // ★ THÊM QUAN TRỌNG
        String password = req.getParameter("password");
        String role = req.getParameter("role");
        String active = req.getParameter("active");

        // ===== CREATE USER =====
        if ("create".equals(action)) {
            User u = new User();
            u.setUsername(username);         // ★ BẮT BUỘC
            u.setFullname(fullname);
            u.setEmail(email);
            u.setPassword(password);
            u.setIsAdmin("admin".equals(role));
            u.setActivated("active".equals(active));

            service.create(u);
        }

        // ===== UPDATE USER =====
        if ("update".equals(action)) {
            Integer id = Integer.valueOf(idStr);
            User u = service.findById(id);

            if (u != null) {
                u.setUsername(username);     // ★ BẮT BUỘC
                u.setFullname(fullname);
                u.setEmail(email);
                u.setPassword(password);
                u.setIsAdmin("admin".equals(role));
                u.setActivated("active".equals(active));

                service.update(u);
            }
        }

        // ===== DELETE USER =====
        if ("delete".equals(action)) {
            Integer id = Integer.valueOf(idStr);
            service.delete(id);
        }

        resp.sendRedirect("users");
    }
}
