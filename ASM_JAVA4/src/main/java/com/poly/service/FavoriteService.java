package com.poly.service;

import java.util.List;

import com.poly.dao.FavoriteDAO;
import com.poly.dao.UserDAO;
import com.poly.dao.VideoDAO;
import com.poly.model.Favorite;
import com.poly.model.User;
import com.poly.model.Video;

public class FavoriteService {

    private FavoriteDAO favoriteDao = new FavoriteDAO();
    private UserDAO userDao = new UserDAO();
    private VideoDAO videoDao = new VideoDAO();

    // ================= GET ALL FAVORITE BY USER =================
    public List<Favorite> findByUser(Integer userId) {
        return favoriteDao.findByUser(userId);
    }

    // ================= ADD FAVORITE =================
    public void addFavorite(Integer userId, Integer videoId) {

        User user = userDao.findById(userId);
        Video video = videoDao.findById(videoId.toString());

        if (user == null || video == null) {
            throw new RuntimeException("User hoặc Video không tồn tại!");
        }

        // Check trùng yêu thích
        Favorite exists = favoriteDao.findOne(userId, videoId);
        if (exists != null) return;

        // Tạo mới
        Favorite fav = new Favorite();
        fav.setUser(user);
        fav.setVideo(video);

        favoriteDao.create(fav);
    }

    // ================= REMOVE FAVORITE =================
    public void removeFavorite(Integer userId, Integer videoId) {
        favoriteDao.deleteFavorite(userId, videoId);
    }

    // ================= CHECK USER FAVORITED VIDEO =================
    public boolean isFavorite(Integer userId, Integer videoId) {
        return favoriteDao.findOne(userId, videoId) != null;
    }
    
 // ================= GET ALL FAVORITES =================
    public List<Favorite> findAll() {
        return favoriteDao.findAll();
    }


}
