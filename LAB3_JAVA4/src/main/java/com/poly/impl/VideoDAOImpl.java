package com.poly.impl;

import com.poly.dao.VideoDAO;
import com.poly.entity.Video;
import jakarta.persistence.TypedQuery;

public class VideoDAOImpl extends AbstractDAO<Video, Integer> implements VideoDAO {
    public VideoDAOImpl() { super(Video.class); }

    @Override
    public Video findByYoutubeId(String youtubeId) {
        String jpql = "SELECT v FROM Video v WHERE v.youtubeId = :yid";
        TypedQuery<Video> q = em.createQuery(jpql, Video.class);
        q.setParameter("yid", youtubeId);
        return q.getResultStream().findFirst().orElse(null);
    }
}
