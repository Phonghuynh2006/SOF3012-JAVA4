package com.poly.dao;

import java.util.List;
import javax.persistence.*;
import com.poly.model.User;

public class UserManager {

    EntityManagerFactory factory = Persistence.createEntityManagerFactory("PolyOE");
    EntityManager em = factory.createEntityManager();

    public void findAll() {
        String jpql = "SELECT o FROM User o";
        TypedQuery<User> q = em.createQuery(jpql, User.class);
        List<User> list = q.getResultList();
        list.forEach(u -> {
            String fullname = u.getFullname();
            boolean admin = Boolean.TRUE.equals(u.getAdmin());
            System.out.println(fullname + ": " + admin);
        });
    }

    public void findById() { 
        User user = em.find(User.class, "07"); 
        if (user != null) {
            String fullname = user.getFullname();
            boolean admin = Boolean.TRUE.equals(user.getAdmin());
            System.out.println(fullname + ": " + admin);
        } else {
            System.out.println("Không tìm thấy");
        }
    }

    public void create() {
        User user = new User();
        user.setId("07");
        user.setPassword("123");
        user.setEmail("teo@gmail.com");
        user.setFullname("Tèo");
        user.setAdmin(false);

        try {
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public void update() {
        try {
            User user = em.find(User.class, "03");
            if (user == null) { System.out.println("Không có"); return; }
            user.setFullname("Nguyễn Văn Tèo");
            user.setEmail("teonv@gmail.com");

            em.getTransaction().begin();
            em.merge(user);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteById() {
        try {
            User user = em.find(User.class, "02");
            if (user == null) { System.out.println("Không có"); return; }
            em.getTransaction().begin();
            em.remove(user);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    
    public void findByEmailAndRole() {
        String jpql = "SELECT o FROM User o WHERE o.email LIKE :search AND o.admin = :role";
        TypedQuery<User> query = em.createQuery(jpql, User.class);

        // gán giá trị cho tham số
        query.setParameter("search", "%@fpt.edu.vn");
        query.setParameter("role", false);  // không phải admin

        List<User> list = query.getResultList();

        System.out.println("===== USERS có email @fpt.edu.vn và không phải admin =====");
        list.forEach(u -> {
            System.out.println(u.getFullname() + " - " + u.getEmail());
        });
    }

    public void findPage() {
        int pageNumber = 2;  
        int pageSize = 5;

        String jpql = "SELECT u FROM User u";
        TypedQuery<User> query = em.createQuery(jpql, User.class);


        query.setFirstResult(pageNumber * pageSize);
        query.setMaxResults(pageSize);

        List<User> list = query.getResultList();
        list.forEach(u -> {
            System.out.println(u.getId() + " - " + u.getFullname() + " - " + u.getEmail());
        });
    }

}
