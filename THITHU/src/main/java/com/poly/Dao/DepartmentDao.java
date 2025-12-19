package com.poly.Dao;

import com.poly.Entity.Department;  // ✅ ĐÚNG
import java.util.List;

public interface DepartmentDao {
    List<Department> findAll();
    Department findById(String id);
    void create(Department d);
    void delete(String id);
}


