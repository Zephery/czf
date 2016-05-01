package com.service.impl;

import com.dao.IDepartmentDAO;
import com.models.Department;
import com.service.IDepartmentService;

import java.util.List;

/**
 * Created by Zephery on 2016/4/13.
 */
public class DepartmentService implements IDepartmentService {
    protected IDepartmentDAO departmentDAO;

    public IDepartmentDAO getDepartmentDAO() {
        return departmentDAO;
    }

    public void setDepartmentDAO(IDepartmentDAO departmentDAO) {
        this.departmentDAO = departmentDAO;
    }

    public List getDepartment() {
        return departmentDAO.getDepartment();
    }

    public Department getDepartmentid(int id) {
        return departmentDAO.getDepartmentid(id);
    }

    public int findDepartment() {
        return departmentDAO.findDepartment();
    }

    public Department find(int id) {
        return departmentDAO.find(id);
    }

    public void delete(int id) {
        departmentDAO.delete(id);
    }

    public void update(Department department) {
        departmentDAO.update(department);
    }

    public void save(Department department) {
        departmentDAO.save(department);
    }

    public List getRequiredDepartmentByName(String name) {
        return departmentDAO.getRequiredDepartmentByName(name);
    }
}
