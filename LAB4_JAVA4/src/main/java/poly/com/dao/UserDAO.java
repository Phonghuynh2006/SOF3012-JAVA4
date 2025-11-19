package poly.com.dao;

import java.util.List;
import poly.com.entity.Users;

public interface UserDAO {
    List<Users> findAll();
    Users findById(Integer id);     // sửa String → Integer
    Users create(Users entity);     // thay void → Users
    Users update(Users entity);     // thay void → Users
    void deleteById(Integer id);    // sửa String → Integer
    Users findByIdOrEmail(String x);

}
