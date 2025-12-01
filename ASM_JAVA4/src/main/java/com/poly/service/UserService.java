package com.poly.service;

import com.poly.dao.UserDAO;
import com.poly.model.User;

public class UserService {

    private UserDAO dao = new UserDAO();

    public User login(String username, String password) {

        User user = dao.findByUsername(username);

        if (user == null) return null;
        if (!user.getPassword().equals(password)) return null;
        if (!user.getActivated()) return null;

        return user;
    }
    
    public User findByUsername(String username) {
        return dao.findByUsername(username);
    }

    public User create(User user) {
        return dao.create(user);
    }

}
