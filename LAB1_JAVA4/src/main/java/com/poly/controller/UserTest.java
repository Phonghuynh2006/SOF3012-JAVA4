package com.poly.controller;

import com.poly.dao.UserManager;
import com.poly.model.User;

import java.util.List;
public class UserTest {



	    public static void main(String[] args) {
	        UserManager um = new UserManager();

	        // findAll
	        System.out.println("All users:");
	        List<User> all = um.findAll();
	        all.forEach(System.out::println);

	        // insert a new user
	        User newUser = new User("u016","p016","Test User","test16@fpt.edu.vn", false);
	        System.out.println("Insert u016: " + um.insert(newUser));

	        // findById
	        System.out.println("Find u016: " + um.findById("u016"));

	        // update
	        newUser.setFullname("Test User Updated");
	        System.out.println("Update u016: " + um.update(newUser));
	        System.out.println("After update: " + um.findById("u016"));

	        // delete
	        System.out.println("Delete u016: " + um.delete("u016"));
	        System.out.println("Find u016 after delete: " + um.findById("u016"));

	        // Bài 3: tìm email kết thúc bằng @fpt.edu.vn và admin = false
	        System.out.println("Users with @fpt.edu.vn and not admin:");
	        List<User> fptUsers = um.findByEmailDomainAndNotAdmin("@fpt.edu.vn");
	        fptUsers.forEach(u -> System.out.println(u.getFullname() + " - " + u.getEmail()));

	        // Bài 4: trang thứ 3 (pageNumber = 2 nếu bắt đầu từ 0), pageSize = 5
	        System.out.println("Page 3 (pageNumber=2) pageSize=5:");
	        List<User> page3 = um.findPage(2, 5);
	        page3.forEach(System.out::println);

	        um.close();
	    }
	
}
