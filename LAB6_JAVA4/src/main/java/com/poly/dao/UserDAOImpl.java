package com.poly.dao;

import com.poly.dao.UserDAO;
import com.poly.entity.User;
import com.poly.utils.JpaUtil;
import jakarta.persistence.Persistence;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityManager;

public class UserDAOImpl implements UserDAO {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("poly");

    @Override
    public User findById(String id) {
        EntityManager em = emf.createEntityManager();
        try {
            return em.find(User.class, id);
        } finally {
            em.close();
        }
    }
}

