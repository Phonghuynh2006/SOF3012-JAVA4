package poly.com.entity;

import jakarta.persistence.*;
import lombok.*;
import jakarta.persistence.FetchType;

import java.util.List;

@Entity
@Table(name = "Users")  // giống tên bảng trong SQL
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "UserID")          // INT IDENTITY
    private Integer id;

    @Column(name = "Username", length = 50)
    private String username;

    @Column(name = "Password", length = 100, nullable = false)
    private String password;

    @Column(name = "Fullname", length = 100)
    private String fullname;

    @Column(name = "Email", length = 100, unique = true)
    private String email;

    @Column(name = "IsAdmin")
    private Boolean admin;

    @Column(name = "Activated")
    private Boolean activated;

    // 1 User có nhiều Favorite và nhiều Share
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    @ToString.Exclude
    private List<Favorites> favorites;

    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    @ToString.Exclude
    private List<Shares> shares;
}
