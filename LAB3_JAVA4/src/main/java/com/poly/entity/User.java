package com.poly.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Users", uniqueConstraints = { @UniqueConstraint(columnNames = "Email") })
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "UserID")
    private Integer userId;

    @Column(name = "Username")
    private String username;

    @Column(name = "Password")
    private String password;

    @Column(name = "Fullname", columnDefinition = "NVARCHAR(100)")
    private String fullname;

    @Column(name = "Email")
    private String email;

    @Column(name = "IsAdmin")
    private Boolean isAdmin;

    @Column(name = "Activated")
    private Boolean activated;

    // GIỮ MỘT FIELD DUY NHẤT + EAGER
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private List<Favorite> favorites;

    @OneToMany(mappedBy = "user")
    private List<Share> shares;

    // getters & setters
    public Integer getUserId() { return userId; }
    public void setUserId(Integer userId) { this.userId = userId; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getFullname() { return fullname; }
    public void setFullname(String fullname) { this.fullname = fullname; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public Boolean getIsAdmin() { return isAdmin; }
    public void setIsAdmin(Boolean isAdmin) { this.isAdmin = isAdmin; }
    public Boolean getActivated() { return activated; }
    public void setActivated(Boolean activated) { this.activated = activated; }
    public List<Favorite> getFavorites() { return favorites; }
    public void setFavorites(List<Favorite> favorites) { this.favorites = favorites; }
    public List<Share> getShares() { return shares; }
    public void setShares(List<Share> shares) { this.shares = shares; }
}
