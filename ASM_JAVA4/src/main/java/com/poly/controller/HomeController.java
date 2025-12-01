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

@WebServlet({"/index", "/home", ""})
public class HomeController extends HttpServlet {

    private VideoService videoService = new VideoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Video> videos = videoService.getAllVideos();

        req.setAttribute("videos", videos);

        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
