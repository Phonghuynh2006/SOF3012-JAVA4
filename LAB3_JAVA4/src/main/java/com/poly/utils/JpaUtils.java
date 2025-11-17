package com.poly.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JpaUtils {
    private static final EntityManagerFactory emf;
    static {
        try {
            emf = Persistence.createEntityManagerFactory("ASM_JAVA4");
        } catch (Exception e) {
            throw new RuntimeException("Cannot build EntityManagerFactory", e);
        }
    }
    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
