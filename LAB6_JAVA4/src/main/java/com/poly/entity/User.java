package com.poly.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "Users")
public class User {

    @Id
    private String username;

    private String password;

    private Boolean admin;

    // getters and setters
}

