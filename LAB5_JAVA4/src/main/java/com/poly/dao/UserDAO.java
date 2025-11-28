package com.poly.dao;

import com.poly.entity.User;

public class UserDAO {

    public User findById(String username) {

        // user 1
        if(username.equals("admin")) {
            User u = new User();
            u.setUsername("admin");
            u.setPassword("123");
            u.setFullname("Quản trị viên");
            return u;
        }

        // user 2
        if(username.equals("huynh")) {
            User u = new User();
            u.setUsername("huynh");
            u.setPassword("111");
            u.setFullname("Huỳnh Văn A");
            return u;
        }

        return null;
    }
}
