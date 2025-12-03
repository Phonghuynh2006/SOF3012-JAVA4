package com.poly.controller;

import java.io.IOException;
import java.util.List;

import com.poly.model.Video;
import com.poly.service.VideoService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/detail")
public class DetailController extends HttpServlet {

    private VideoService service = new VideoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String id = req.getParameter("id");

        // Không có id → về trang chủ
        if (id == null || id.isEmpty()) {
            resp.sendRedirect("index");
            return;
        }

        // Lấy video
        Video video = service.findById(id);
        if (video == null) {
            resp.sendRedirect("index");
            return;
        }

        // Tăng lượt xem
        service.increaseView(video);

        // Ghi vào cookie "recent videos"
        saveRecentVideo(req, resp, id);

        // Lấy video gợi ý (trừ video hiện tại)
        List<Video> suggest = service.getSuggest(id);

        // Truyền data
        req.setAttribute("video", video);
        req.setAttribute("suggest", suggest);

        req.getRequestDispatcher("/detail.jsp").forward(req, resp);
    }

    // ========== Lưu vào cookie các video đã xem ==========
    private void saveRecentVideo(HttpServletRequest req, HttpServletResponse resp, String id) {

        Cookie[] cookies = req.getCookies();
        String list = id;   // mặc định chỉ có id hiện tại

        if (cookies != null) {
            for (Cookie ck : cookies) {
                if ("recent".equals(ck.getName())) {

                    // Lấy giá trị cũ và lọc bỏ ký tự không hợp lệ (dấu phẩy, khoảng trắng)
                    String old = ck.getValue();
                    if (old != null) {
                        old = old.replace(",", "-").replace(" ", "");
                    }

                    // Nếu đã có id trong chuỗi thì không thêm nữa, tránh trùng
                    if (old != null && !old.isEmpty()) {
                        if (old.contains(id)) {
                            list = old;          // đã có rồi
                        } else {
                            list = old + "-" + id;  // nối bằng dấu '-'
                        }
                    }
                }
            }
        }

        // Giá trị cookie CHỈ gồm số và dấu '-' → hợp lệ với Tomcat
        Cookie recent = new Cookie("recent", list);
        recent.setMaxAge(60 * 60 * 24 * 7); // 7 ngày
        recent.setPath(req.getContextPath());
        resp.addCookie(recent);
    }
}
