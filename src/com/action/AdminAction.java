package com.action;

import com.models.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.IAdminService;

import java.util.Map;

/**
 * Created by Zephery on 2016/5/1.
 */
public class AdminAction extends ActionSupport {
    private Admin admin;
    private IAdminService adminService;
    private String adminname;
    private String password;

    public Admin getAdmin() {
        return this.admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public IAdminService getAdminService() {
        return adminService;
    }

    public void setAdminService(IAdminService adminService) {
        this.adminService = adminService;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String adminlogin() throws Exception {
        Admin a = adminService.validateAdmin(admin.getAdminname(), admin.getPassword());
        if (admin != null) {
            Map session = ActionContext.getContext().getSession();
            session.put("admin", a);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String adminlogout() throws Exception {
        Map session = ActionContext.getContext().getSession();
        session.remove("admin");
        return SUCCESS;
    }

    public String toaddadmin() throws Exception {
        return SUCCESS;
    }

    public String addadmin() throws Exception {
        Admin addadmin = new Admin();
        addadmin.setId(admin.getId());
        addadmin.setAdminname(admin.getAdminname());
        addadmin.setPassword(admin.getPassword());
        adminService.saveAdmin(addadmin);
        return SUCCESS;
    }
}
