package com.poly.controller.admin;

import com.poly.model.Video;
import com.poly.service.VideoService;
import com.poly.service.UserService;
import com.poly.service.FavoriteService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/index")
public class AdminDashboardController extends HttpServlet {

    private VideoService videoService = new VideoService();
    private UserService userService = new UserService();
    private FavoriteService favoriteService = new FavoriteService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Lấy tất cả video
        List<Video> allVideos = videoService.getAllVideos();
        int totalVideos = allVideos.size();

        long totalViews = 0;
        for (Video v : allVideos) {
            if (v.getViews() != null) {
                totalViews += v.getViews();
            }
        }

        // Lấy tổng users & favorites
        int totalUsers = userService.findAll().size();
        int totalFavorites = favoriteService.findAll().size();

        // Lấy 5 video mới nhất
        List<Video> latestVideos = allVideos;
        if (allVideos.size() > 5) {
            latestVideos = allVideos.subList(0, 5);
        }

        // Gửi dữ liệu xuống view
        req.setAttribute("totalVideos", totalVideos);
        req.setAttribute("totalUsers", totalUsers);
        req.setAttribute("totalViews", totalViews);
        req.setAttribute("totalFavorites", totalFavorites);
        req.setAttribute("latestVideos", latestVideos);

        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
}
