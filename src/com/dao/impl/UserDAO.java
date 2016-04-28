package com.dao.impl;

import java.util.*;

import com.models.Users;
import com.dao.*;
import org.hibernate.*;


/**
 * Created by Zephery on 2016/4/23.
 */
public class UserDAO extends BaseDAO implements IUserDAO {
    public void saveUser(Users user) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.save(user);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Users validateUser(String username, String password) {
        //查询 Users 表中的记录
        String hql = "from Users u where u.username=? and u.password=?";
        Session session = getSession();
        Query query = session.createQuery(hql);
        query.setParameter(0, username);
        query.setParameter(1, password);
        List users = query.list();
        Iterator it = users.iterator();
        while (it.hasNext()) {
            if (users.size() != 0) {
                Users user = (Users) it.next();    //创建持久化的 JavaBean 对象 user
                return user;
            }
        }
        session.close();
        return null;
    }

    public boolean existUser(String username) {
        String hql = "from Users where username=?";
        Session session = getSession();
        Query query = session.createQuery(hql);
        query.setParameter(0, username);
        List users = query.list();
        if (users.size() > 0)
            return true;
        else
            return false;
    }
}

