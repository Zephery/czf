package com.dao.impl;

import com.dao.BaseDAO;
import com.dao.IOrderitemDAO;

import java.util.List;

import com.models.Orderitem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by Zephery on 2016/4/28.
 */
public class OrderitemDAO extends BaseDAO implements IOrderitemDAO {
    public Orderitem getorderitemhistory(int orderid) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Orderitem o where o.orders.orderid=?");
            query.setParameter(0, orderid);
            Orderitem orderitems = (Orderitem)query.uniqueResult();
            ts.commit();
            session.close();
            return orderitems;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
