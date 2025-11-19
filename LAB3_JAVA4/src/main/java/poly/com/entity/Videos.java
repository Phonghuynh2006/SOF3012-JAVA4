package poly.com.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.List;

@Entity
@Table(name = "Videos")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class Videos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "VideoID")
    private Integer id;

    @Column(name = "Title", length = 200)
    private String title;

    @Column(name = "Poster", length = 200)
    private String poster;

    @Column(name = "Description")
    private String description;

    @Column(name = "Views")
    private Integer views;

    @Column(name = "Active")
    private Boolean active;

    @Column(name = "YoutubeID", length = 50)
    private String youtubeId;

    @OneToMany(mappedBy = "video")
    @ToString.Exclude
    private List<Favorites> favorites;

    @OneToMany(mappedBy = "video")
    @ToString.Exclude
    private List<Shares> shares;
}
