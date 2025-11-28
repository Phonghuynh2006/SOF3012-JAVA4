package com.poly.listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;


@WebListener
public class AppListener implements ServletContextListener, HttpSessionListener {

    @Override
    public void contextInitialized(ServletContextEvent e) {
        ServletContext app = e.getServletContext();
        // Lần đầu server chạy → đọc từ file, tạm thời dùng 0
        app.setAttribute("visitors", 0);
    }

    @Override
    public void sessionCreated(HttpSessionEvent e) {
        ServletContext app = e.getSession().getServletContext();
        // Lấy số visitors hiện tại
        int count = (int) app.getAttribute("visitors");
        // Tăng lên 1 mỗi session mới
        app.setAttribute("visitors", count + 1);
    }

    @Override
    public void contextDestroyed(ServletContextEvent e) {
        // Optional: lưu số lượng visitors về file/CSDL (nếu muốn)
    }
}
