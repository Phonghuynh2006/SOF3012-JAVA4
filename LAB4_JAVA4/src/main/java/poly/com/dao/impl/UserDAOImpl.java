package poly.com.dao.impl;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import poly.com.dao.UserDAO;
import poly.com.entity.Users;
import poly.com.utils.JpaUtils;

public class UserDAOImpl implements UserDAO {

    @Override
    public List<Users> findAll() {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT u FROM Users u"; // sửa tên entity
            TypedQuery<Users> query = em.createQuery(jpql, Users.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public Users findById(Integer id) { // sửa String -> Integer
        EntityManager em = JpaUtils.getEntityManager();
        try {
            return em.find(Users.class, id);
        } finally {
            em.close();
        }
    }

    @Override
    public Users create(Users entity) { // đổi void -> Users
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
    public Users update(Users entity) { // đổi void -> Users
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            Users merged = em.merge(entity);
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
    public void deleteById(Integer id) { // sửa String -> Integer
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            Users entity = em.find(Users.class, id);
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
    public Users findByIdOrEmail(String x) {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = 
                "SELECT u FROM Users u WHERE u.username = :x OR u.email = :x";
            TypedQuery<Users> q = em.createQuery(jpql, Users.class);
            q.setParameter("x", x);
            List<Users> list = q.getResultList();
            return list.isEmpty() ? null : list.get(0);
        } finally {
            em.close();
        }
    }

}
