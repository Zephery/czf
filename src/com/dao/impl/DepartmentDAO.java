package com.dao.impl;

import com.dao.BaseDAO;
import com.dao.IDepartmentDAO;
import com.models.Department;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by Zephery on 2016/4/13.
 */
public class DepartmentDAO extends BaseDAO implements IDepartmentDAO {
    public List getDepartment() {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Department d");
            List departments = query.list();
            ts.commit();
            session.close();
            session = null;
            return departments;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Department getDepartmentid(int id) {
        Session session = getSession();
        Department department = (Department) session.get(Department.class, id);
        return department;
    }

    public int findDepartment() {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            return session.createQuery("from Department").list().size();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Department find(int id) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Department where id=?");
            query.setParameter(0, id);
            query.setMaxResults(1);
            Department department = (Department) query.uniqueResult();
            ts.commit();
            session.clear();
            return department;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void delete(int id) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Department department = find(id);
            session.delete(department);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(Department department) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.update(department);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void save(Department department) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            session.save(department);
            ts.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List getRequiredDepartmentByName(String name) {
        try {
            Session session = getSession();
            Transaction ts = session.beginTransaction();
            Query query = session.createQuery("from Department where name like ?");
            query.setParameter(0, "%" + name + "%");
            List departments = query.list();
            ts.commit();
            session.close();
            return departments;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
