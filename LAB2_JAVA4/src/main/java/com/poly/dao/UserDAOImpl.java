package com.poly.dao;

import java.util.List;
import com.poly.entity.User;
import com.poly.utils.XJPA;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class UserDAOImpl implements UserDAO {
    EntityManager em = XJPA.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close(); // đóng kết nối khi bị GC dọn
    }

    @Override
    public List<User> findAll() {
        String jpql = "SELECT o FROM User o";
        TypedQuery<User> q = em.createQuery(jpql, User.class);
        return q.getResultList();
    }

    @Override
    public User findById(String id) {
        return em.find(User.class, id);
    }

    @Override
    public void create(User entity) {
        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    @Override
    public void update(User entity) {
        try {
            em.getTransaction().begin();
            em.merge(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    @Override
    public void deleteById(String id) {
        User entity = em.find(User.class, id);
        try {
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        }
    }
}
