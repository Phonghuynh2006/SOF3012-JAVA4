package com.poly.dao;


import com.poly.model.User;

import javax.persistence.*;
import java.util.List;

public class UserManager {

	    private static final String PU = "PolyOE";
	    private EntityManagerFactory emf;

	    public UserManager() {
	        emf = Persistence.createEntityManagerFactory(PU);
	    }

	    public void close() {
	        if (emf != null) emf.close();
	    }

	    // 1. findAll()
	    public List<User> findAll() {
	        EntityManager em = emf.createEntityManager();
	        try {
	            TypedQuery<User> q = em.createQuery("SELECT u FROM User u", User.class);
	            return q.getResultList();
	        } finally {
	            em.close();
	        }
	    }

	    // 2. findById
	    public User findById(String id) {
	        EntityManager em = emf.createEntityManager();
	        try {
	            return em.find(User.class, id);
	        } finally {
	            em.close();
	        }
	    }

	    // 3. insert (persist)
	    public boolean insert(User u) {
	        EntityManager em = emf.createEntityManager();
	        EntityTransaction tx = em.getTransaction();
	        try {
	            tx.begin();
	            em.persist(u);
	            tx.commit();
	            return true;
	        } catch (Exception ex) {
	            if (tx.isActive()) tx.rollback();
	            ex.printStackTrace();
	            return false;
	        } finally {
	            em.close();
	        }
	    }

	    // 4. update (merge)
	    public boolean update(User u) {
	        EntityManager em = emf.createEntityManager();
	        EntityTransaction tx = em.getTransaction();
	        try {
	            tx.begin();
	            em.merge(u);
	            tx.commit();
	            return true;
	        } catch (Exception ex) {
	            if (tx.isActive()) tx.rollback();
	            ex.printStackTrace();
	            return false;
	        } finally {
	            em.close();
	        }
	    }

	    // 5. delete
	    public boolean delete(String id) {
	        EntityManager em = emf.createEntityManager();
	        EntityTransaction tx = em.getTransaction();
	        try {
	            tx.begin();
	            User u = em.find(User.class, id);
	            if (u != null) {
	                em.remove(u);
	                tx.commit();
	                return true;
	            } else {
	                tx.rollback();
	                return false;
	            }
	        } catch (Exception ex) {
	            if (tx.isActive()) tx.rollback();
	            ex.printStackTrace();
	            return false;
	        } finally {
	            em.close();
	        }
	    }

	    // Bài 3: tìm users có email kết thúc @fpt.edu.vn và không phải admin
	    public List<User> findByEmailDomainAndNotAdmin(String domain) {
	        EntityManager em = emf.createEntityManager();
	        try {
	            TypedQuery<User> q = em.createQuery("SELECT u FROM User u WHERE u.email LIKE :search AND u.admin = :role", User.class);
	            q.setParameter("search", "%" + domain);
	            q.setParameter("role", false);
	            return q.getResultList();
	        } finally {
	            em.close();
	        }
	    }

	    // Bài 4: phân trang, trả về danh sách pageNumber (0-based) với pageSize
	    public List<User> findPage(int pageNumber, int pageSize) {
	        EntityManager em = emf.createEntityManager();
	        try {
	            TypedQuery<User> q = em.createQuery("SELECT u FROM User u ORDER BY u.id", User.class);
	            q.setFirstResult(pageNumber * pageSize);
	            q.setMaxResults(pageSize);
	            return q.getResultList();
	        } finally {
	            em.close();
	        }
	    }
	
}
