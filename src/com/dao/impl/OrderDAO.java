package com.dao.impl;

import org.hibernate.*;
import com.models.*;
import com.dao.*;
import org.hibernate.Transaction;

/**
 * Created by Zephery on 2016/4/26.
 */
public class OrderDAO extends BaseDAO implements IOrderDAO{
    public Orders saveOrder(Orders order) {
        try{
            Session session=getSession();
            org.hibernate.Transaction ts=session.beginTransaction();
            session.save(order);
            ts.commit();
            session.close();
            return order;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
