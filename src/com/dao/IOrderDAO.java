package com.dao;
import com.models.*;

import java.util.List;

/**
 * Created by Zephery on 2016/4/26.
 */
public interface IOrderDAO {
    public Orders saveOrder(Orders order);
    public List getorderhistory(int userid);
}
