package com.dao;


import com.models.Admin;

/**
 * Created by Zephery on 2016/5/1.
 */
public interface IAdminDAO {
    public void saveAdmin(Admin admin);

    public Admin validateAdmin(String adminname, String password);

    public boolean existAdmin(String adminname);
}
