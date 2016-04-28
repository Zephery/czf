package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Created by Zephery on 2016/4/23.
 */
public class BaseDAO {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession() {
        Session session = sessionFactory.openSession();
        return session;
    }
}
