package com.service;

import com.models.Users;

/**
 * Created by Zephery on 2016/4/4.
 */
public interface IUserService {
    public void saveUser(Users user);
    public Users validateUser(String username, String password);
    public boolean existUser(String username);
}
