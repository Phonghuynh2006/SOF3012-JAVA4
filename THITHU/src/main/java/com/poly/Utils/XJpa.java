package com.poly.Utils;

import jakarta.persistence.*;

public class XJpa {

    private static EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("testPU");

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
