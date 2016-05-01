package com.action;

import com.models.Department;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.IDepartmentService;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.commons.io.FileUtils;

import java.text.SimpleDateFormat;
import java.util.*;
import java.io.File;

/**
 * Created by Zephery on 2016/4/13.
 */
public class DepartmentAction extends ActionSupport {
    private IDepartmentService departmentService;
    private Integer id;
    private Department department;
    private File zpFile;

    public IDepartmentService getDepartmentService() {
        return departmentService;
    }

    public void setDepartmentService(IDepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public File getZpFile() {
        return zpFile;
    }

    public void setZpFile(File zpFile) {
        this.zpFile = zpFile;
    }

    public String todepartment() throws Exception {                 //show
        List department = departmentService.getDepartment();
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("department", department);
        return SUCCESS;
    }

    public String detail() throws Exception {                    //detail
        Department department = departmentService.getDepartmentid(id);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("department", department);
        return SUCCESS;
    }

    public String delete() throws Exception {                    //delete
        int delete_id = department.getId();
        departmentService.delete(delete_id);
        return SUCCESS;
    }

    public String toadd() throws Exception {              //turn to add_department_view
        return SUCCESS;
    }

    public String addDepartment() throws Exception {              //add Department
        Department department0 = new Department();
        int add_id = department.getId();
        if (departmentService.find(add_id) != null) {
            return ERROR;
        }
        department0.setId(department.getId());
        department0.setName(department.getName());
        department0.setAddress(department.getAddress());
        department0.setPhoneNumber(department.getPhoneNumber());
        department0.setMobileNumber(department.getMobileNumber());
        department0.setBrief(department.getBrief());
        try {
            String targetDirectory = ServletActionContext.getServletContext().getRealPath("/images");
            //rename and upload
            String targetFileName = generateFileName(zpFile.getName());
            //create file
            File target = new File(targetDirectory, targetFileName);
            //copy file
            FileUtils.copyFile(zpFile, target);
            department0.setPicture(targetFileName);
            departmentService.save(department0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public String generateFileName(String fileName) {       //datatime.picture
        String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
        int random = new Random().nextInt(10000);
        int position = fileName.lastIndexOf(".");
        String extension = fileName.substring(position);
        return formatDate + random + extension;
    }

    public String toupdateDepview() throws Exception {
        Integer id1 = department.getId();
        Department department0 = departmentService.find(id1);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("deparment", department0);
        return SUCCESS;
    }

    public String updateDepartment() throws Exception {         //update department
        Department department0 = departmentService.find(department.getId());
        department0.setName(department.getName());
        department0.setAddress(department.getName());
        department0.setPhoneNumber(department.getPhoneNumber());
        department0.setMobileNumber(department.getMobileNumber());
        department0.setBrief(department.getBrief());
        department0.setPicture(department.getPicture());
        departmentService.update(department0);
        return SUCCESS;
    }

}
