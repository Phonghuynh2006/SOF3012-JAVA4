package com.poly.impl;

import com.poly.dao.FavoriteDAO;
import com.poly.entity.Favorite;
import jakarta.persistence.TypedQuery;
import java.util.List;
import com.poly.utils.JpaUtils;

public class FavoriteDAOImpl extends AbstractDAO<Favorite, Integer> implements FavoriteDAO {
    public FavoriteDAOImpl() { super(Favorite.class); }

    @Override
    public List<Favorite> findByUserId(int userId) {
        String jpql = "SELECT f FROM Favorite f WHERE f.user.userId = :uid";
        TypedQuery<Favorite> q = em.createQuery(jpql, Favorite.class);
        q.setParameter("uid", userId);
        return q.getResultList();
    }

    @Override
    public List<Favorite> findByVideoId(int videoId) {
        String jpql = "SELECT f FROM Favorite f WHERE f.video.videoId = :vid";
        TypedQuery<Favorite> q = em.createQuery(jpql, Favorite.class);
        q.setParameter("vid", videoId);
        return q.getResultList();
    }
    
    @Override
    public List<Favorite> findAllWithUserAndVideo() {
        var em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT f FROM Favorite f JOIN FETCH f.user JOIN FETCH f.video";
            return em.createQuery(jpql, Favorite.class).getResultList();
        } finally {
            em.close(); // tránh rò rỉ EM
        }
    }

}
