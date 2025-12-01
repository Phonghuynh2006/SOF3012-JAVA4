package com.poly.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
    "/video/list",
    "/video/detail/*",
    "/video/like/*",
    "/video/share/*"
})
public class VideoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("message", "Bạn đang ở VideoServlet");
        req.getRequestDispatcher("/page.jsp").forward(req, resp);
    }
}
