package com.dao.impl;

import com.dao.BaseDAO;
import com.dao.IOrderitemDAO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by Zephery on 2016/4/28.
 */
public class OrderitemDAO extends BaseDAO implements IOrderitemDAO{
    public List getorderitemhistory(int orderid){
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Orderitem o where o.orderid=?");
            query.setParameter(0,orderid);
            List list=query.list();
            ts.commit();
            session.close();
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
