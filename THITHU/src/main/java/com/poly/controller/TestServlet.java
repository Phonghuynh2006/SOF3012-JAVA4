package com.poly.controller;

import com.poly.Dao.*;
import com.poly.Entity.Department;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/test")
public class TestServlet extends HttpServlet {

    DepartmentDao dpDao = new DepartmentDaoImpl();
    EmployeeDao empDao = new EmployeeDaoImpl();

    // ===== HIỂN THỊ =====
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        // SHOW EMPLOYEES
        if ("employees".equals(action)) {
            String id = req.getParameter("id");
            req.setAttribute("list", empDao.findByDepartment(id));
            req.getRequestDispatcher("/Employee.jsp").forward(req, resp);
            return;
        }

        // EDIT DEPARTMENT
        if ("edit".equals(action)) {
            String id = req.getParameter("id");
            req.setAttribute("form", dpDao.findById(id));
        }

        req.setAttribute("list", dpDao.findAll());
        req.getRequestDispatcher("/Department.jsp").forward(req, resp);
    }

    // ===== CREATE / DELETE =====
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        String id = req.getParameter("id");
        String name = req.getParameter("name");

        if ("create".equals(action)) {
            Department d = new Department();
            d.setId(id);
            d.setName(name);
            dpDao.create(d);
        }

        if ("delete".equals(action)) {
            dpDao.delete(id);
        }

        resp.sendRedirect("test");
    }
}
