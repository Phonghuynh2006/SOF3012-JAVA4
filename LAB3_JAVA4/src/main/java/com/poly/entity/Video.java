package com.poly.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Videos")
public class Video {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "VideoID")
    private Integer videoId;

    @Column(name = "Title", columnDefinition = "NVARCHAR(200)")
    private String title;

    @Column(name = "Poster", columnDefinition = "NVARCHAR(200)")
    private String poster;

    @Column(name = "Description", columnDefinition = "NVARCHAR(MAX)")
    private String description;

    @Column(name = "Views")
    private Integer views;

    @Column(name = "Active")
    private Boolean active;

    @Column(name = "YoutubeID")
    private String youtubeId;

    @OneToMany(mappedBy = "video")
    private List<Favorite> favorites;

    @OneToMany(mappedBy = "video")
    private List<Share> shares;

    // getters & setters
    // ...
    public Integer getVideoId() { return videoId; }
    public void setVideoId(Integer videoId) { this.videoId = videoId; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getPoster() { return poster; }
    public void setPoster(String poster) { this.poster = poster; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public Integer getViews() { return views; }
    public void setViews(Integer views) { this.views = views; }
    public Boolean getActive() { return active; }
    public void setActive(Boolean active) { this.active = active; }
    public String getYoutubeId() { return youtubeId; }
    public void setYoutubeId(String youtubeId) { this.youtubeId = youtubeId; }
    public List<Favorite> getFavorites() { return favorites; }
    public void setFavorites(List<Favorite> favorites) { this.favorites = favorites; }
    public List<Share> getShares() { return shares; }
    public void setShares(List<Share> shares) { this.shares = shares; }
}
