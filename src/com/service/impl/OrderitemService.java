package com.service.impl;

import com.dao.IOrderitemDAO;
import com.models.Orderitem;
import com.service.IOrderitemService;

import java.util.List;

/**
 * Created by Zephery on 2016/4/28.
 */
public class OrderitemService implements IOrderitemService {
    private IOrderitemDAO orderitemDAO;

    public IOrderitemDAO getOrderitemDAO() {
        return orderitemDAO;
    }

    public void setOrderitemDAO(IOrderitemDAO orderitemDAO) {
        this.orderitemDAO = orderitemDAO;
    }

    public Orderitem getorderitemhistory(int orderid) {
        return orderitemDAO.getorderitemhistory(orderid);
    }
}
