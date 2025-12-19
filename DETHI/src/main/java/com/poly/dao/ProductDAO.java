package com.poly.dao;

import com.poly.entity.Product;
import com.poly.Utils.XJpa;
import jakarta.persistence.*;
import java.util.List;

public class ProductDAO {

    public void create(Product p) {
        EntityManager em = XJpa.getEntityManager();
        em.getTransaction().begin();
        em.persist(p);
        em.getTransaction().commit();
        em.close();
    }

    public void update(Product p) {
        EntityManager em = XJpa.getEntityManager();
        em.getTransaction().begin();
        em.merge(p);
        em.getTransaction().commit();
        em.close();
    }

    public void delete(int id) {
        EntityManager em = XJpa.getEntityManager();
        em.getTransaction().begin();
        Product p = em.find(Product.class, id);
        em.remove(p);
        em.getTransaction().commit();
        em.close();
    }

    public Product findById(int id) {
        EntityManager em = XJpa.getEntityManager();
        return em.find(Product.class, id);
    }

    public List<Product> findAll() {
        EntityManager em = XJpa.getEntityManager();
        return em.createQuery("SELECT p FROM Product p", Product.class)
                 .getResultList();
    }
}
