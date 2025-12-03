package com.poly.service;

import java.util.List;

import com.poly.dao.VideoDAO;
import com.poly.model.Video;

public class VideoService {

    private VideoDAO dao = new VideoDAO();

    // ================= LẤY TẤT CẢ VIDEO =================
    public List<Video> getAllVideos() {
        return dao.findAll();
    }

    // ================= LẤY VIDEO ACTIVE =================
    public List<Video> getActiveVideos() {
        return dao.findActive();
    }

    // ================= TÌM THEO ID (STRING) =================
    public Video findById(String id) {
        return dao.findById(id);
    }

    // ================= TÌM KIẾM THEO TÊN =================
    public List<Video> search(String keyword) {
        if (keyword == null || keyword.isBlank()) {
            return getActiveVideos();
        }
        return dao.findByKeyword(keyword);
    }

    // ================= PHÂN TRANG (TRANG CHỦ) =================
    public List<Video> getPage(int page, int size) {
        return dao.findPage(page, size);
    }

    public int countVideos() {
        return dao.count();
    }

    // ================= TĂNG LƯỢT XEM =================
    public void increaseView(Video video) {
        if (video == null) return;

        Integer views = video.getViews();
        if (views == null) views = 0;

        video.setViews(views + 1);
        dao.update(video);
    }

    // ================= VIDEO GỢI Ý =================
    public List<Video> getSuggest(String videoId) {
        return dao.findSuggest(videoId);
    }
    


        // Lấy tất cả video
        public List<Video> findAll() {
            return dao.findAll();
        }

        // Lấy video theo ID
        public Video findById(Integer id) {
            return dao.findById(id.toString());
        }

        // Tạo mới video
        public Video create(Video video) {
            return dao.create(video);
        }

        // Cập nhật video
        public Video update(Video video) {
            return dao.update(video);
        }

        // Xóa video
        public void delete(Integer id) {
            dao.delete(id.toString());
        }
    

}
