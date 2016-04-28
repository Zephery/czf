package com.dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.dao.BaseDAO;
import com.dao.ITotalCatalogDAO;

import java.util.List;

/**
 * Created by Zephery on 2016/4/26.
 */
public class TotalCatalogDAO extends BaseDAO implements ITotalCatalogDAO {
    public List getTotalcatalog() {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            List totalcatalog = session.createQuery("from Totalcatalog").list();
            ts.commit();
            session.close();
            return totalcatalog;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
