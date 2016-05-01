package com.service.impl;

import com.dao.IAdminDAO;
import com.models.Admin;
import com.service.IAdminService;

/**
 * Created by Zephery on 2016/5/1.
 */
public class AdminService implements IAdminService {
    private IAdminDAO adminDAO;

    public IAdminDAO getAdminDAO() {
        return adminDAO;
    }

    public void setAdminDAO(IAdminDAO adminDAO) {
        this.adminDAO = adminDAO;
    }

    public void saveAdmin(Admin admin) {
        adminDAO.saveAdmin(admin);
    }

    public Admin validateAdmin(String adminname, String password) {
        return adminDAO.validateAdmin(adminname, password);
    }

    public boolean existAdmin(String adminname) {
        return adminDAO.existAdmin(adminname);
    }

}
