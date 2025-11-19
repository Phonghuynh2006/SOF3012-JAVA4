package poly.com.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import poly.com.dao.impl.UserDAOImpl;
import poly.com.dao.impl.FavoriteDAOImpl;
import poly.com.dao.UserDAO;
import poly.com.dao.FavoriteDAO;
import poly.com.entity.Favorites;
import poly.com.entity.Users;
@WebServlet("/user-favorites")
public class UserFavoriteServlet extends HttpServlet {

    private final UserDAO userDAO = new UserDAOImpl();
    private final FavoriteDAO favoriteDAO = new FavoriteDAOImpl(); // hiện chưa dùng

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // ví dụ URL: /user-favorites?userId=1  (1 là UserID trong DB)
        String userIdParam = req.getParameter("userId");
        if (userIdParam == null || userIdParam.isBlank()) {
            req.setAttribute("error", "Thiếu tham số userId");
            req.getRequestDispatcher("/views/user-favorites.jsp").forward(req, resp);
            return;
        }

        Integer userId = null;
        try {
            userId = Integer.valueOf(userIdParam);
        } catch (NumberFormatException e) {
            req.setAttribute("error", "userId phải là số nguyên (ví dụ: 1, 2, 3)");
            req.getRequestDispatcher("/views/user-favorites.jsp").forward(req, resp);
            return;
        }

        Users user = userDAO.findById(userId);
        if (user == null) {
            req.setAttribute("error", "Không tìm thấy người dùng với id: " + userId);
            req.getRequestDispatcher("/views/user-favorites.jsp").forward(req, resp);
            return;
        }

        // Lấy danh sách Favorites từ quan hệ
        List<Favorites> favorites = user.getFavorites();

        req.setAttribute("user", user);
        req.setAttribute("favorites", favorites);

        req.getRequestDispatcher("/views/user-favorites.jsp").forward(req, resp);
    }
}
