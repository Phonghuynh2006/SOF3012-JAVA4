package poly.com.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import poly.com.dao.VideoDAO;
import poly.com.dao.impl.VideoDAOImpl;
import poly.com.entity.Videos;

@WebServlet("/search")
public class SearchVideoServlet extends HttpServlet {

    private VideoDAO videoDAO = new VideoDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String keyword = req.getParameter("keyword");

        // nếu chưa nhập keyword, để rỗng
        if (keyword == null) {
            keyword = "";
        }

        List<Videos> list = videoDAO.findByKeyword(keyword);

        req.setAttribute("videos", list);
        req.setAttribute("keyword", keyword);

        req.getRequestDispatcher("/views/search-video.jsp").forward(req, resp);
    }
}
