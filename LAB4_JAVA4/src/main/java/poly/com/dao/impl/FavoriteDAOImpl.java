package poly.com.dao.impl;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import poly.com.dao.FavoriteDAO;
import poly.com.entity.Favorites;
import poly.com.utils.JpaUtils;

public class FavoriteDAOImpl implements FavoriteDAO {

    @Override
    public List<Favorites> findAll() {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            String jpql = "SELECT f FROM Favorites f";   
            TypedQuery<Favorites> query = em.createQuery(jpql, Favorites.class);
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public Favorites findById(Integer id) {
        EntityManager em = JpaUtils.getEntityManager();
        try {
            return em.find(Favorites.class, id);
        } finally {
            em.close();
        }
    }

    @Override
    public Favorites create(Favorites entity) {
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.persist(entity);
            trans.commit();
            return entity; 
        } catch (Exception e) {
            trans.rollback();
            throw new RuntimeException(e);
        } finally {
            em.close();
        }
    }

    @Override
    public Favorites update(Favorites entity) {
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            Favorites updated = em.merge(entity);
            trans.commit();
            return updated; 
        } catch (Exception e) {
            trans.rollback();
            throw new RuntimeException(e);
        } finally {
            em.close();
        }
    }

    @Override
    public void deleteById(Integer id) {
        EntityManager em = JpaUtils.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            Favorites entity = em.find(Favorites.class, id);
            if (entity != null) {
                em.remove(entity);
            }
            trans.commit();
        } catch (Exception e) {
            trans.rollback();
            throw new RuntimeException(e);
        } finally {
            em.close();
        }
    }
}
