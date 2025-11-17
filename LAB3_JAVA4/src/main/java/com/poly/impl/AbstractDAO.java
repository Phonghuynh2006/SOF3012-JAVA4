package com.poly.impl;

import com.poly.dao.GenericDAO;
import com.poly.utils.JpaUtils;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;

public abstract class AbstractDAO<T, K> implements GenericDAO<T, K> {
    protected final EntityManager em = JpaUtils.getEntityManager();
    private final Class<T> entityClass;

    protected AbstractDAO(Class<T> entityClass) { this.entityClass = entityClass; }

    @Override
    public List<T> findAll() {
        String jpql = "SELECT e FROM " + entityClass.getSimpleName() + " e";
        TypedQuery<T> q = em.createQuery(jpql, entityClass);
        return q.getResultList();
    }

    @Override
    public T findById(K id) {
        return em.find(entityClass, id);
    }

    @Override
    public T create(T entity) {
        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    @Override
    public T update(T entity) {
        try {
            em.getTransaction().begin();
            T merged = em.merge(entity);
            em.getTransaction().commit();
            return merged;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    @Override
    public void deleteById(K id) {
        try {
            em.getTransaction().begin();
            T ref = em.find(entityClass, id);
            if (ref != null) em.remove(ref);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw e;
        }
    }
}
