package com.dao.impl;

import com.dao.BaseDAO;
import com.dao.IAdminDAO;
import com.models.Admin;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.Iterator;
import java.util.List;

/**
 * Created by Zephery on 2016/5/1.
 */
public class AdminDAO extends BaseDAO implements IAdminDAO {
    public void saveAdmin(Admin admin) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.save(admin);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Admin validateAdmin(String adminname, String password) {
        String hql = "from Admin a where a.adminname=? and a.password=?";
        Session session = getSession();
        Query query = session.createQuery(hql);
        query.setParameter(0, adminname);
        query.setParameter(1, password);
        List admins = query.list();
        Iterator it = admins.iterator();
        while (it.hasNext()) {
            if (admins.size() != 0) {
                Admin admin = (Admin) it.next();
                return admin;
            }
        }
        session.close();
        return null;
    }

    public boolean existAdmin(String adminname) {
        String hql = "from Admin where adminname=?";
        Session session = getSession();
        Query query = session.createQuery(hql);
        query.setParameter(0, adminname);
        List admins = query.list();
        if (admins.size() > 0)
            return true;
        else
            return false;
    }
}
