package com.service.impl;

import com.dao.IOrderDAO;
import com.models.Orders;
import com.service.IOrderService;

import java.util.List;

/**
 * Created by Zephery on 2016/4/26.
 */
public class OrderService implements IOrderService {
    private IOrderDAO orderDAO;

    public IOrderDAO getOrderDAO() {
        return orderDAO;
    }

    public void setOrderDAO(IOrderDAO orderDAO) {
        this.orderDAO = orderDAO;
    }

    public Orders saveOrder(Orders order) {
        return orderDAO.saveOrder(order);
    }
    public List getorderhistory(int userid){
        return orderDAO.getorderhistory(userid);
    }
}
