package com.poly.model;

import javax.persistence.*;
import lombok.Data;
@Data
@Entity
@Table(name = "Users")
public class User {

    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "password")
    private String password;

    @Column(name = "fullname")
    private String fullname;

    @Column(name = "email")
    private String email;

    @Column(name = "admin")
    private Boolean admin = false;
}
