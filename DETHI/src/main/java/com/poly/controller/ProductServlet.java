package com.poly.controller;

import com.poly.dao.ProductDAO;
import com.poly.entity.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/product", "/"})
public class ProductServlet extends HttpServlet {

    private ProductDAO dao = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        if (action == null || action.equals("list")) {
            // LIST + RESET FORM
            req.setAttribute("product", new Product());
            req.setAttribute("list", dao.findAll());
            req.getRequestDispatcher("/product-form.jsp")
               .forward(req, resp);

        } else if ("edit".equals(action)) {
            // sửa
            int id = Integer.parseInt(req.getParameter("id"));
            req.setAttribute("product", dao.findById(id));
            req.setAttribute("list", dao.findAll());
            req.getRequestDispatcher("/product-form.jsp")
               .forward(req, resp);

        } else if ("delete".equals(action)) {
            // xóa
            int id = Integer.parseInt(req.getParameter("id"));
            dao.delete(id);
            resp.sendRedirect("product");

        } else if ("reset".equals(action)) {
            // reset
            resp.sendRedirect("product");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String id = req.getParameter("id");

        Product p = new Product();
        p.setName(req.getParameter("name"));
        p.setPrice(Double.parseDouble(req.getParameter("price")));
        p.setQuantity(Integer.parseInt(req.getParameter("quantity")));

        if (id == null || id.isEmpty()) {
            // CREATE
            dao.create(p);
        } else {
            // UPDATE
            p.setId(Integer.parseInt(id));
            dao.update(p);
        }

        resp.sendRedirect("product");
    }
}
