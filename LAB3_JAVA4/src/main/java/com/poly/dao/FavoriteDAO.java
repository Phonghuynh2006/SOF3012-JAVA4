package com.poly.dao;
import java.util.List;
import com.poly.entity.Favorite;

public interface FavoriteDAO extends GenericDAO<Favorite, Integer> {
    List<Favorite> findByUserId(int userId);
    List<Favorite> findByVideoId(int videoId);
    List<Favorite> findAllWithUserAndVideo();

}
