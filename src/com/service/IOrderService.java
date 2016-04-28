package com.service;

import com.models.Orders;

import java.util.List;

/**
 * Created by Zephery on 2016/4/26.
 */
public interface IOrderService {
    public Orders saveOrder(Orders order);
    public List getorderhistory(int userid);
}
