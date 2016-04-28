package com.dao.impl;

import com.dao.IProductDAO;
import org.hibernate.Session;
import com.models.*;
import com.dao.*;
import org.hibernate.*;

import java.util.*;

/**
 * Created by Zephery on 2016/4/23.
 */
public class ProductDAO extends BaseDAO implements IProductDAO {
    public int findAllProduct() {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            return session.createQuery("from Product").list().size();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public List getNewProduct() {               //get 5 new Product
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Product p order by p.datetime desc ");
            query.setMaxResults(2);
            List products = query.list();
            ts.commit();
            session.close();
            session = null;
            return products;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List showProduct(int pageNow, int pageSize) {     //show all Products
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Product p where p.datetime='0' ");
            int firstResult = (pageNow - 1) * pageSize;
            query.setFirstResult(firstResult);
            query.setMaxResults(pageSize);
            List products = query.list();
            ts.commit();
            session.close();
            session = null;
            return products;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void addProduct(Product product) {             //add Product
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.save(product);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Product findProduct(int productid) {    //get message by productid
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Product p where p.productid=?");
            query.setParameter(0, productid);
            query.setMaxResults(1);
            Product product = (Product) query.uniqueResult();
            ts.commit();
            session.close();
            return product;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void deleteProduct(int productid) {               //deleteProduct
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Product product = findProduct(productid);
            session.delete(product);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateProduct(Product product) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.update(product);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List searchbyname(String name) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Product where name like ?");
            query.setParameter(0, "%" + name + "%");
            List books = query.list();
            ts.commit();
            session.close();
            return books;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public int findAllCatalogProduct(Integer catalogid) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Product p where p.catalog.catalogid=?");
            query.setParameter(0, catalogid);
            List list = query.list();
            session.close();
            return list.size();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public List showcatalogProduct(int pageNow, int pageSize, Integer catalogid) {     //show all Products
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Product p where p.catalog.catalogid=?");
            query.setParameter(0, catalogid);
            int firstResult = (pageNow - 1) * pageSize;
            query.setFirstResult(firstResult);
            query.setMaxResults(pageSize);
            List products = query.list();
            ts.commit();
            session.close();
            session = null;
            return products;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}