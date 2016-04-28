package com.action;

import java.util.*;
import java.io.File;

import com.models.*;
import com.service.*;
import com.opensymphony.xwork2.*;

import java.text.SimpleDateFormat;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

/**
 * Created by Zephery on 2016/4/4.
 */
public class UserAction extends ActionSupport {
    protected Users user;
    private File zpFile;
    protected IUserService userService;
    private String fileName;
    private String name;
    private IOrderService orderService;

    public Users getUser() {
        return this.user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }

    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public File getZpFile() {
        return zpFile;
    }

    public void setZpFile(File zpFile) {
        this.zpFile = zpFile;
    }

    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFileName() {
        return fileName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public IOrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(IOrderService orderService) {
        this.orderService = orderService;
    }

    public String logincheck() throws Exception {
        Users u = userService.validateUser(user.getUsername(), user.getPassword());
        //System.out.println("hello world");
        if (u != null) {
            Map session = ActionContext.getContext().getSession();
            List orders = orderService.getorderhistory(u.getUserid());
            session.put("orders", orders);
            session.put("user", u);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String register() throws Exception {
        try {
            String formatDate = new SimpleDateFormat("MMddHHmmss").format(new Date());
            Users user0 = new Users();
            user0.setUserid(Integer.parseInt(formatDate));
            user0.setUsername(user.getUsername());
            user0.setPassword(user.getPassword());
            user0.setEmail(user.getEmail());
            user0.setPhonenumber(user.getPhonenumber());
            user0.setSex(user.getSex());
            user0.setAge(user.getAge());
            user0.setAddress(user.getAddress());
            try {
                String targetDirectory = ServletActionContext.getServletContext().getRealPath("/images");
                //rename and upload
                String targetFileName = generateFileName(zpFile.getName());
                // create file
                File target = new File(targetDirectory, targetFileName);
                //copy file
                FileUtils.copyFile(zpFile, target);
                user0.setPicture(targetFileName);
            } catch (Exception e) {
                e.printStackTrace();
            }
            userService.saveUser(user0);
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }

    public String generateFileName(String fileName) {       //datatime.picture
        String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
        int random = new Random().nextInt(10000);
        int position = fileName.lastIndexOf(".");
        String extension = fileName.substring(position);
        return formatDate + random + extension;
    }

    public String logout() throws Exception {                  //logout
        Map session = ActionContext.getContext().getSession();
        session.remove("user");
        return SUCCESS;
    }
}
