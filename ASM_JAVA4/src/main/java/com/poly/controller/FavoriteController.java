package com.poly.controller;

import java.io.IOException;
import java.util.List;

import com.poly.model.User;
import com.poly.model.Favorite;
import com.poly.service.FavoriteService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/favorite")
public class FavoriteController extends HttpServlet {

    private FavoriteService service = new FavoriteService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("user");

        if (user == null) {
            resp.sendRedirect("login");
            return;
        }

        String idParam = req.getParameter("id");
        if (idParam != null) {
            Integer videoId = Integer.valueOf(idParam);
            service.addFavorite(user.getUserId(), videoId);
            resp.sendRedirect("detail?id=" + videoId);
            return;
        }

        List<Favorite> list = service.findByUser(user.getUserId());
        req.setAttribute("list", list);
        req.getRequestDispatcher("/favorites.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("user");

        if (user == null) {
            resp.sendRedirect("login");
            return;
        }

        String action = req.getParameter("action");
        String videoIdParam = req.getParameter("videoId");

        if (videoIdParam == null) {
            resp.sendRedirect("favorite");
            return;
        }

        Integer videoId = Integer.valueOf(videoIdParam);

        if ("like".equals(action)) {
            service.addFavorite(user.getUserId(), videoId);
        }
        else if ("unlike".equals(action)) {
            service.removeFavorite(user.getUserId(), videoId);
        }

        resp.sendRedirect("favorite");
    }
}
