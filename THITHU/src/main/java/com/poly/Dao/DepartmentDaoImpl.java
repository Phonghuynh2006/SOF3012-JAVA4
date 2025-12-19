package com.poly.Dao;

import com.poly.Entity.Department;
import com.poly.Utils.XJpa;
import jakarta.persistence.EntityManager;
import java.util.List;

public class DepartmentDaoImpl implements DepartmentDao {

    @Override
    public List<Department> findAll() {
        return XJpa.getEntityManager()
                .createQuery("SELECT d FROM Department d", Department.class)
                .getResultList();
    }

    @Override
    public Department findById(String id) {
        return XJpa.getEntityManager().find(Department.class, id);
    }

    @Override
    public void create(Department d) {
        EntityManager em = XJpa.getEntityManager();
        em.getTransaction().begin();
        em.persist(d);
        em.getTransaction().commit();
        em.close();
    }

    @Override
    public void delete(String id) {
        EntityManager em = XJpa.getEntityManager();
        em.getTransaction().begin();
        Department d = em.find(Department.class, id);
        em.remove(d);
        em.getTransaction().commit();
        em.close();
    }
}
