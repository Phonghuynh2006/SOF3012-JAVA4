package com.poly.controller;

import javax.persistence.*;


public class test {
	  public static void main(String[] args) {
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
	    EntityManager em = emf.createEntityManager();
	    System.out.println("OK: Connected to PolyOE, EM = " + em);
	    em.close(); emf.close();
	  }
	

}
