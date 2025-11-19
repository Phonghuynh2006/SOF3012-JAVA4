package poly.com.dao.impl;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import poly.com.dao.VideoDAO;
import poly.com.entity.Videos;
import poly.com.utils.JpaUtils;

public class VideoDAOImpl implements VideoDAO {

    @Override
    public List<Videos> findAll() {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT v FROM Videos v";   // sửa tên entity
            TypedQuery<Videos> query = em.createQuery(jpql, Videos.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public Videos findById(Integer id) {   // sửa String -> Integer
        EntityManager em = JpaUtils.getEntityManager();
        try {
            return em.find(Videos.class, id);
        } finally {
            em.close();
        }
    }

    @Override
    public Videos create(Videos entity) {   // đổi void -> return entity
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            em.persist(entity);
            tx.commit();
            return entity;
        } catch (Exception e) {
            tx.rollback();
            throw new RuntimeException(e);
        } finally {
            em.close();
        }
    }

    @Override
    public Videos update(Videos entity) {  // đổi void -> return merged
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            Videos merged = em.merge(entity);
            tx.commit();
            return merged;
        } catch (Exception e) {
            tx.rollback();
            throw new RuntimeException(e);
        } finally {
            em.close();
        }
    }

    @Override
    public void deleteById(Integer id) {   // sửa String -> Integer
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            Videos entity = em.find(Videos.class, id);
            if (entity != null) {
                em.remove(entity);
            }
            tx.commit();
        } catch (Exception e) {
            tx.rollback();
            throw new RuntimeException(e);
        } finally {
            em.close();
        }
    }
    @Override
    public List<Videos> findByKeyword(String keyword) {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT v FROM Videos v "
                        + "WHERE v.title LIKE :kw OR v.description LIKE :kw";
            TypedQuery<Videos> query = em.createQuery(jpql, Videos.class);
            query.setParameter("kw", "%" + keyword + "%");
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public List<Videos> findActive() {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT v FROM Videos v WHERE v.active = true";
            TypedQuery<Videos> query = em.createQuery(jpql, Videos.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public Videos findByYoutubeId(String youtubeId) {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT v FROM Videos v WHERE v.youtubeId = :ytid";
            TypedQuery<Videos> query = em.createQuery(jpql, Videos.class);
            query.setParameter("ytid", youtubeId);
            List<Videos> list = query.getResultList();
            return list.isEmpty() ? null : list.get(0);
        } finally {
            em.close();
        }
    }
}
