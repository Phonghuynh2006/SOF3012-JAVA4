package com.poly.Dao;

import com.poly.Entity.Employee;
import com.poly.Utils.XJpa;
import java.util.List;

public class EmployeeDaoImpl implements EmployeeDao {

    @Override
    public List<Employee> findByDepartment(String deptId) {
        return XJpa.getEntityManager()
                .createQuery(
                    "SELECT e FROM Employee e WHERE e.department.id = :id",
                    Employee.class)
                .setParameter("id", deptId)
                .getResultList();
    }
}
