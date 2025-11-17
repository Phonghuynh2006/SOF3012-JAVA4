package com.poly.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Favorites",
       uniqueConstraints = @UniqueConstraint(columnNames = {"UserID", "VideoID"}))
public class Favorite {
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "FavID")
    private Integer favId;

    @ManyToOne
    @JoinColumn(name = "UserID")
    private User user;

    @ManyToOne
    @JoinColumn(name = "VideoID")
    private Video video;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "LikedDate")
    private Date likedDate;

    // getters & setters
    public Integer getFavId() { return favId; }
    public void setFavId(Integer favId) { this.favId = favId; }
    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }
    public Video getVideo() { return video; }
    public void setVideo(Video video) { this.video = video; }
    public Date getLikedDate() { return likedDate; }
    public void setLikedDate(Date likedDate) { this.likedDate = likedDate; }
}
