package poly.com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import poly.com.dao.UserDAO;
import poly.com.dao.impl.UserDAOImpl;
import poly.com.entity.Users;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String idOrEmail = req.getParameter("idOrEmail");
        String password = req.getParameter("password");

        Users user = userDAO.findByIdOrEmail(idOrEmail);

        if (user == null || !user.getPassword().equals(password)) {
            req.setAttribute("error", "Sai username/email hoặc mật khẩu!");
        } else {
            req.setAttribute("message", "Đăng nhập thành công!");
            req.setAttribute("user", user);
        }

        req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }
}
