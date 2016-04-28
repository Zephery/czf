package com.dao;

import com.models.Users;

/**
 * Created by Zephery on 2016/4/23.
 */
public interface IUserDAO {
    public void saveUser(Users user);

    public Users validateUser(String username, String password);

    public boolean existUser(String username);
}
