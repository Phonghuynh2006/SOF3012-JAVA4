package poly.com.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import poly.com.dao.FavoriteDAO;
import poly.com.dao.impl.FavoriteDAOImpl;
import poly.com.entity.Favorites;

@WebServlet("/favorites")
public class FavoriteListServlet extends HttpServlet {

    private FavoriteDAO favoriteDAO = new FavoriteDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Favorites> favorites = favoriteDAO.findAll();
        req.setAttribute("favorites", favorites);

        req.getRequestDispatcher("/views/favorite-list.jsp").forward(req, resp);
    }
}
