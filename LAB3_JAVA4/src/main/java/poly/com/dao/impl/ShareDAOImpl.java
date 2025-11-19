package poly.com.dao.impl;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import poly.com.dao.ShareDAO;
import poly.com.entity.Shares;
import poly.com.utils.JpaUtils;

public class ShareDAOImpl implements ShareDAO {

    @Override
    public List<Shares> findAll() {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT s FROM Shares s"; // sửa tên entity
            TypedQuery<Shares> query = em.createQuery(jpql, Shares.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public Shares findById(Integer id) { // sửa Long -> Integer
        EntityManager em = JpaUtils.getEntityManager();
        try {
            return em.find(Shares.class, id);
        } finally {
            em.close();
        }
    }

    @Override
    public Shares create(Shares entity) { // đổi void -> Shares
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
    public Shares update(Shares entity) { // đổi void -> Shares
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            Shares merged = em.merge(entity);
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
    public void deleteById(Integer id) { // sửa Long -> Integer
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            Shares entity = em.find(Shares.class, id);
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
}
