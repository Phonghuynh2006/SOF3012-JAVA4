package poly.com.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.Date;

@Entity
@Table(name = "Shares")   // đúng tên bảng trong SQL
@Getter @Setter @NoArgsConstructor @AllArgsConstructor @ToString
public class Shares{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ShareID")     // INT IDENTITY
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "UserID")  // cột UserID trong bảng Shares
    private Users user;

    @ManyToOne
    @JoinColumn(name = "VideoID") // cột VideoID trong bảng Shares
    private Videos video;

    @Column(name = "ReceiverEmail", length = 100)
    private String emails;        // hoặc đổi tên field thành receiverEmail

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "ShareDate")
    private Date shareDate;
}
