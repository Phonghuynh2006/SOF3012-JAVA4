package com.poly.dao;

import java.util.List;
import com.poly.model.User;

public class UserDAO extends AbstractDAO<User> {

    public UserDAO() {
        super(User.class);
    }

    public User findByUsername(String username) {
        String jpql = "SELECT u FROM User u WHERE u.username = :username";
        List<User> list = getEntityManager()
                .createQuery(jpql, User.class)
                .setParameter("username", username)
                .getResultList();

        return list.isEmpty() ? null : list.get(0);
    }
    
    
}
