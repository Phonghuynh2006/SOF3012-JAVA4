package com.poly.Entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "departments") // đúng tên table
public class Department {

    @Id
    @Column(name = "id") // đúng tên cột
    private String id;

    @Column(name = "name") // đúng tên cột
    private String name;

    @OneToMany(mappedBy = "department")
    private List<Employee> employees;

    // ===== GETTER & SETTER =====

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
