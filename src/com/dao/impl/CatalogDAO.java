package com.dao.impl;

import com.dao.BaseDAO;
import com.dao.ICatalogDAO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by Zephery on 2016/4/24.
 */
public class CatalogDAO extends BaseDAO implements ICatalogDAO{
    public List getAllCatalogs(){
        try{
            Session session=getSession();
            Transaction ts=session.beginTransaction();
            List catalogs=session.createQuery("from Catalog").list();
            ts.commit();
            session.close();
            return catalogs;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public List getAllCatalogsbyid(int totalcatalogid){
        try{
            Session session=getSession();
            Transaction ts=session.beginTransaction();
            Query query=session.createQuery("from Catalog c where c.totalcatalog.totalcatalogid=?");
            query.setParameter(0,totalcatalogid);
            List catalogs=query.list();
            ts.commit();
            session.close();
            return catalogs;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
