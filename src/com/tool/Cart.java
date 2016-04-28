package com.tool;

import com.models.Orderitem;
import com.models.Product;

import java.awt.print.Book;
import java.util.Iterator;
import java.util.*;

/**
 * Created by Zephery on 2016/4/24.
 */
public class Cart {
    protected Map<Integer, Orderitem> items;            //属性item

    //构造函数
    public Cart() {
        if (items == null)
            items = new HashMap<Integer, Orderitem>();
    }

    //添加图书到购物车
    public void addBook(Integer productid, Orderitem orderitem) {
        //是否存在,如果存在,更改数量;如果不存在的话,添加入集合
        if (items.containsKey("productid")) {
            Orderitem _orderitem = items.get(productid);
            orderitem.setQuantity(_orderitem.getOrderitemid() + orderitem.getQuantity());
            items.put(productid, _orderitem);
        } else {
            items.put(productid, orderitem);
        }
    }

    //更新购物车的购买书籍数量
    public void updateCart(Integer productid, int quantity) {
        Orderitem orderitem = items.get(productid);
        orderitem.setQuantity(quantity);
        items.put(productid, orderitem);
    }

    //计算总价格
    public int getTotalPrice() {
        int totalPrice = 0;
        for (Iterator it = items.values().iterator(); it.hasNext(); ) {
            Orderitem orderitem = (Orderitem) it.next();
            Product product = orderitem.getProduct();
            int quantity = orderitem.getQuantity();
            totalPrice += product.getPrice() * quantity;
        }
        return totalPrice;
    }

    public Map<Integer, Orderitem> getItems() {
        return items;
    }

    public void setItems(Map<Integer, Orderitem> items) {
        this.items = items;
    }
}
