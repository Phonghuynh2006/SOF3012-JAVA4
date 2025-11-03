package com.poly.model;
import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Users")

	public class User implements Serializable {
	    @Id
	    @Column(name = "Id", length = 50)
	    private String id;

	    @Column(name = "Password", nullable = false)
	    private String password;

	    @Column(name = "Fullname")
	    private String fullname;

	    @Column(name = "Email")
	    private String email;

	    @Column(name = "Admin")
	    private Boolean admin;

	    public User() {}

	    public User(String id, String password, String fullname, String email, Boolean admin) {
	        this.id = id;
	        this.password = password;
	        this.fullname = fullname;
	        this.email = email;
	        this.admin = admin;
	    }

	    // getters & setters
	    public String getId() { return id; }
	    public void setId(String id) { this.id = id; }

	    public String getPassword() { return password; }
	    public void setPassword(String password) { this.password = password; }

	    public String getFullname() { return fullname; }
	    public void setFullname(String fullname) { this.fullname = fullname; }

	    public String getEmail() { return email; }
	    public void setEmail(String email) { this.email = email; }

	    public Boolean getAdmin() { return admin; }
	    public void setAdmin(Boolean admin) { this.admin = admin; }

	    @Override
	    public String toString() {
	        return String.format("User[id=%s, fullname=%s, email=%s, admin=%s]", id, fullname, email, admin);
	    }
	
}
