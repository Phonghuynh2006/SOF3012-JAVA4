package com.poly.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Shares")
public class Share {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ShareID")
    private Integer shareId;

    @ManyToOne
    @JoinColumn(name = "UserID")
    private User user;

    @ManyToOne
    @JoinColumn(name = "VideoID")
    private Video video;

    @Column(name = "ReceiverEmail")
    private String receiverEmail;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "ShareDate")
    private Date shareDate;

    // getters & setters
    public Integer getShareId() { return shareId; }
    public void setShareId(Integer shareId) { this.shareId = shareId; }
    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }
    public Video getVideo() { return video; }
    public void setVideo(Video video) { this.video = video; }
    public String getReceiverEmail() { return receiverEmail; }
    public void setReceiverEmail(String receiverEmail) { this.receiverEmail = receiverEmail; }
    public Date getShareDate() { return shareDate; }
    public void setShareDate(Date shareDate) { this.shareDate = shareDate; }
}
