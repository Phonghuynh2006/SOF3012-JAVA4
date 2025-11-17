package com.poly.impl;

import com.poly.dao.ShareDAO;
import com.poly.entity.Share;
import jakarta.persistence.TypedQuery;
import java.util.List;

public class ShareDAOImpl extends AbstractDAO<Share, Integer> implements ShareDAO {
    public ShareDAOImpl() { super(Share.class); }

    @Override
    public List<Share> findByVideoId(int videoId) {
        String jpql = "SELECT s FROM Share s WHERE s.video.videoId = :vid";
        TypedQuery<Share> q = em.createQuery(jpql, Share.class);
        q.setParameter("vid", videoId);
        return q.getResultList();
    }
}
