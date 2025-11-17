package com.poly.servlet;

import com.poly.dao.UserDAO;
import com.poly.impl.UserDAOImpl;
import com.poly.entity.User;
import com.poly.entity.Favorite;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/favorites")
public class FavoriteListServlet extends HttpServlet {
    private final UserDAO userDAO = new UserDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("userId"));
        User user = userDAO.findById(userId);
        List<Favorite> favorites = (user != null) ? user.getFavorites() : java.util.Collections.emptyList();

        req.setAttribute("user", user);
        req.setAttribute("favorites", favorites);
        req.getRequestDispatcher("/view/favorites.jsp").forward(req, resp);
    }
}

