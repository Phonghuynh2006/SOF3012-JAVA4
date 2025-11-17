package com.poly.dao;
import java.util.List;

public interface GenericDAO<T, K> {
    List<T> findAll();
    T findById(K id);
    T create(T entity);
    T update(T entity);
    void deleteById(K id);
}
