package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;

import com.poly.dao.ReportDAO;
import com.poly.model.Favorite;
import com.poly.model.Share;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/admin/reports")
public class AdminReportController extends HttpServlet {

    private ReportDAO reportDao = new ReportDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        String videoId = req.getParameter("videoId");

        // ======= REPORT 1: THỐNG KÊ VIDEO YÊU THÍCH =======
        if ("favorite-stats".equals(action)) {
            List<Object[]> stats = reportDao.getFavoriteStats();
            req.setAttribute("stats", stats);
            req.getRequestDispatcher("/admin/report-favorite.jsp").forward(req, resp);
            return;
        }

        // ======= REPORT 2: DANH SÁCH NGƯỜI YÊU THÍCH THEO VIDEO =======
        if ("favorite-users".equals(action) && videoId != null) {
            int vid = Integer.parseInt(videoId);
            List<Favorite> list = reportDao.getUsersByVideo(vid);
            req.setAttribute("list", list);
            req.getRequestDispatcher("/admin/report-favorite-users.jsp").forward(req, resp);
            return;
        }

        // ======= REPORT 3: DANH SÁCH SHARE THEO VIDEO =======
        if ("shares".equals(action) && videoId != null) {
            int vid = Integer.parseInt(videoId);
            List<Share> list = reportDao.getSharesByVideo(vid);
            req.setAttribute("list", list);
            req.getRequestDispatcher("/admin/report-share.jsp").forward(req, resp);
            return;
        }

        // ======= MẶC ĐỊNH → TRANG REPORT MAIN =======
        req.getRequestDispatcher("/admin/reports.jsp").forward(req, resp);
    }
}
