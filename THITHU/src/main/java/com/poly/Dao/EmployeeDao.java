package com.poly.Dao;

import com.poly.Entity.Employee;
import java.util.List;

public interface EmployeeDao {
    List<Employee> findByDepartment(String deptId);
}
