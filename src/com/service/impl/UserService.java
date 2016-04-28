package com.service.impl;

import com.dao.*;
import com.models.*;
import com.service.*;

/**
 * Created by Zephery on 2016/4/4.
 */
public class UserService implements IUserService {
    private IUserDAO userDAO;

    public IUserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(IUserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public void saveUser(Users user) {
        userDAO.saveUser(user);
    }

    public Users validateUser(String username, String password) {
        return userDAO.validateUser(username, password);
    }

    public boolean existUser(String username) {
        return userDAO.existUser(username);
    }

}
