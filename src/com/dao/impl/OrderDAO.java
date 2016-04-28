package com.dao.impl;

import org.hibernate.*;
import com.models.*;
import com.dao.*;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by Zephery on 2016/4/26.
 */
public class OrderDAO extends BaseDAO implements IOrderDAO {
    public Orders saveOrder(Orders order) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.save(order);
            ts.commit();
            session.close();
            return order;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List getorderhistory(int userid) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Orders o where o.users.userid=?");
            query.setParameter(0, userid);
            List list = query.list();
            ts.commit();
            session.close();
            session = null;
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
