package com.poly.servlet;

import com.poly.dao.FavoriteDAO;
import com.poly.impl.FavoriteDAOImpl;
import com.poly.entity.Favorite;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.util.List;

@WebServlet("/favorites-report")
public class FavoritesReportServlet extends HttpServlet {
    private final FavoriteDAO favoriteDAO = new FavoriteDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Favorite> items = favoriteDAO.findAllWithUserAndVideo();
        req.setAttribute("items", items);
        req.getRequestDispatcher("/view/favorites-report.jsp").forward(req, resp);
    }
}
