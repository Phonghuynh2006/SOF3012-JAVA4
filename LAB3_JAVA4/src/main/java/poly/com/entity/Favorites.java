package poly.com.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.Date;

@Entity
@Table(name = "Favorites")   // đúng với tên bảng trong SQL
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class Favorites {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "FavID")          // INT IDENTITY
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "UserID")     // cột UserID trong bảng Favorites
    private Users user;

    @ManyToOne
    @JoinColumn(name = "VideoID")    // cột VideoID trong bảng Favorites
    private Videos video;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "LikedDate")
    private Date likeDate;
}
