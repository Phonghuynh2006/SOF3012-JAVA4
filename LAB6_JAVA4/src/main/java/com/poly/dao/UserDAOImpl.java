package com.poly.dao;

import com.poly.dao.UserDAO;
import com.poly.entity.User;
import com.poly.utils.JpaUtil;

import jakarta.persistence.EntityManager;

public class UserDAOImpl implements UserDAO {

    @Override
    public User findById(String username) {
        EntityManager em = JpaUtil.getEntityManager();
        return em.find(User.class, username);
    }
}
