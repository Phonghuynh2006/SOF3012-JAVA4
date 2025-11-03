package com.poly.controller;
import javax.persistence.*;
public class test {

	    public static void main(String[] args) {
	        try {
	            EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
	            EntityManager em = emf.createEntityManager();
	            System.out.println("✅ Kết nối CSDL thành công!");
	            em.close();
	            emf.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	

}
