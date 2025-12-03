package com.poly.dao;

import java.util.List;

import com.poly.model.Video;
import com.poly.util.JpaUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class VideoDAO extends AbstractDAO<Video> {

    public VideoDAO() {
        super(Video.class);
    }

    // ================= FIND BY ID (STRING) =================
    public Video findById(String id) {
        try {
            Integer videoId = Integer.valueOf(id);
            return super.findById(videoId);
        } catch (Exception e) {
            return null;
        }
    }

    // ================= LOAD ACTIVE VIDEOS =================
    public List<Video> findActive() {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            String jpql = "SELECT v FROM Video v WHERE v.active = true ORDER BY v.views DESC";
            return em.createQuery(jpql, Video.class).getResultList();
        } finally {
            em.close();
        }
    }

    // ================= SEARCH BY KEYWORD =================
    public List<Video> findByKeyword(String keyword) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            String jpql = "SELECT v FROM Video v WHERE v.title LIKE :kw ORDER BY v.views DESC";
            return em.createQuery(jpql, Video.class)
                     .setParameter("kw", "%" + keyword + "%")
                     .getResultList();
        } finally {
            em.close();
        }
    }

    // ================= PAGING (HOME PAGE) =================
    public List<Video> findPage(int page, int size) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            String jpql = "SELECT v FROM Video v ORDER BY v.views DESC";
            TypedQuery<Video> query = em.createQuery(jpql, Video.class);
            query.setFirstResult((page - 1) * size);
            query.setMaxResults(size);

            return query.getResultList();
        } finally {
            em.close();
        }
    }

    // ================= COUNT ALL VIDEO =================
    public int count() {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            Long count = em.createQuery("SELECT COUNT(v) FROM Video v", Long.class)
                           .getSingleResult();
            return count.intValue();
        } finally {
            em.close();
        }
    }

    // ================= SUGGEST VIDEO =================
    public List<Video> findSuggest(String videoId) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            Integer id = Integer.valueOf(videoId);

            String jpql = "SELECT v FROM Video v WHERE v.id <> :id ORDER BY v.views DESC";
            return em.createQuery(jpql, Video.class)
                     .setParameter("id", id)
                     .setMaxResults(8)
                     .getResultList();
        } finally {
            em.close();
        }
    }
    
    public void deleteById(Integer id) {
        Video v = findById(String.valueOf(id));
        if (v != null) {
            delete(v);
        }
    }

}
