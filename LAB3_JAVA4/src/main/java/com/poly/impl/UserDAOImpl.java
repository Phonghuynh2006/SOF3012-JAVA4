package com.poly.impl;

import com.poly.dao.UserDAO;
import com.poly.entity.User;
import jakarta.persistence.TypedQuery;

public class UserDAOImpl extends AbstractDAO<User, Integer> implements UserDAO {
    public UserDAOImpl() { super(User.class); }

    @Override
    public User findByEmail(String email) {
        String jpql = "SELECT u FROM User u WHERE u.email = :email";
        TypedQuery<User> q = em.createQuery(jpql, User.class);
        q.setParameter("email", email);
        return q.getResultStream().findFirst().orElse(null);
    }
}
