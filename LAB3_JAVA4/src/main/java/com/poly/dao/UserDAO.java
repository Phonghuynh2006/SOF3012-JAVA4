package com.poly.dao;
import com.poly.entity.User;

public interface UserDAO extends GenericDAO<User, Integer> {
    User findByEmail(String email);
}
