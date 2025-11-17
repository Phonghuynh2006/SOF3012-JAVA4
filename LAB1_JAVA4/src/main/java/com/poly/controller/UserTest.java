package com.poly.controller;

import com.poly.dao.UserManager;
import com.poly.model.User;
import java.util.List;

public class UserTest {


	    public static void main(String[] args) {

	        UserManager dao = new UserManager();

//	        System.out.println("===== CREATE =====");
//	        dao.create();
//
//	        System.out.println("===== FIND ALL =====");
//	        dao.findAll();
//
//	        System.out.println("===== FIND BY ID =====");
//	        dao.findById();
//
//	        System.out.println("===== UPDATE =====");
//	        dao.update();
//
//	        System.out.println("===== DELETE =====");
//	        dao.deleteById();
	        
	        System.out.println("===== FIND EMAIL + ROLE =====");
	        dao.findByEmailAndRole();

	        System.out.println("===== findPage =====");
	        dao.deleteById();

	        System.out.println("Hoàn thành kiểm thử các hàm UserManager!");
	    
	}

	
}
