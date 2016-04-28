package com.action;

import com.models.Orderitem;
import com.models.Orders;
import com.models.Product;
import com.models.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.*;
import com.tool.Cart;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by Zephery on 2016/4/26.
 */
public class ShopAction extends ActionSupport {
    private int productid;
    private int quantity;
    private int price;
    private IProductService productService;
    private IOrderService orderService;

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public int getPrice(){
        return price;
    }
    public void setPrice(int price){
        this.price=price;
    }

    public IProductService getProductService() {
        return productService;
    }

    public void setProductService(IProductService productService) {
        this.productService = productService;
    }

    public IOrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(IOrderService orderService) {
        this.orderService = orderService;
    }

    public String addToCart() throws Exception {
        Product product = productService.findProduct(productid);
        Orderitem orderitem = new Orderitem();
        orderitem.setProduct(product);
        orderitem.setQuantity(quantity);
        Map session = ActionContext.getContext().getSession();
        Cart cart = (Cart) session.get("cart");
        if (cart == null) {
            cart = new Cart();
        }
        cart.addBook(productid, orderitem);
        session.put("cart", cart);
        return SUCCESS;
    }

    public String updateCart() throws Exception {
        Map session = ActionContext.getContext().getSession();
        Cart cart = (Cart) session.get("cart");
        cart.updateCart(productid, this.getQuantity());
        session.put("cart", cart);
        return SUCCESS;
    }

    public String checkout() throws Exception {
        String formatDate = new SimpleDateFormat("yy-MM-dd HH-mm-ss").format(new Date());
        Map session = ActionContext.getContext().getSession();
        Users user = (Users) session.get("user");
        Cart cart = (Cart) session.get("cart");
        if (user == null || cart == null)
            return ActionSupport.ERROR;
        Orders order = new Orders();
        order.setAllprice(this.getQuantity()*this.getPrice());
        order.setOrderdate(formatDate);
        order.setUsers(user);
        for (Iterator it = cart.getItems().values().iterator(); it.hasNext(); ) {
            Orderitem orderitem = (Orderitem) it.next();
            orderitem.setOrders(order);
            order.getOrderitems().add(orderitem);
        }
        orderService.saveOrder(order);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("order", order);
        return SUCCESS;
    }

}
