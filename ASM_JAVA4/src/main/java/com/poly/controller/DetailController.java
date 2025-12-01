package com.poly.controller;

import java.io.IOException;
import java.util.List;

import com.poly.model.Video;
import com.poly.service.VideoService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/detail")
public class DetailController extends HttpServlet {

    private VideoService service = new VideoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String id = req.getParameter("id");

        if (id == null) {
            resp.sendRedirect("index");
            return;
        }

        Video video = service.findById(id);

        if (video == null) {
            resp.sendRedirect("index");
            return;
        }

        List<Video> suggest = service.getAllVideos();

        req.setAttribute("video", video);
        req.setAttribute("suggest", suggest);

        req.getRequestDispatcher("/detail.jsp").forward(req, resp);
    }
}
