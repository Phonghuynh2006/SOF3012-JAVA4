package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.io.Serializable;

@Data
@Entity
@Table(name = "Users")
public class User implements Serializable {

    @Id
    @Column(name = "Id")
    private String id;

    @Column(name = "Password", nullable = false)
    private String password;

    @Column(name = "Fullname", nullable = false)
    private String fullname;

    @Column(name = "Email", nullable = false, unique = true)
    private String email;

    @Column(name = "Admin")
    private boolean admin;
}
