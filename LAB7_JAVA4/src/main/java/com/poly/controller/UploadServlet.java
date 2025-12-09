package com.poly.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;

@WebServlet("/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        
        Part part = req.getPart("file"); // name="file" trong input
        String fileName = part.getSubmittedFileName();
        String contentType = part.getContentType();
        long size = part.getSize();

        // Lưu file vào thư mục uploads (tạo sẵn trong webapp)
        String savePath = getServletContext().getRealPath("/uploads");
        File dir = new File(savePath);
        if (!dir.exists()) dir.mkdir();
        part.write(savePath + "/" + fileName);

        // Trả JSON về client
        String json = String.format(
            "{\"name\":\"%s\",\"type\":\"%s\",\"size\":%d}",
            fileName, contentType, size
        );
        resp.getWriter().print(json);
    }
}