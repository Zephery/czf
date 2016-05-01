package com.service;

import com.models.Department;

import java.util.List;

/**
 * Created by Zephery on 2016/4/13.
 */
public interface IDepartmentService {
    public List getDepartment();

    public Department getDepartmentid(int id);

    public int findDepartment();

    public Department find(int id);

    public void delete(int id);

    public void update(Department department);

    public void save(Department department);

    public List getRequiredDepartmentByName(String name);
}
