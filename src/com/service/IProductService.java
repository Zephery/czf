package com.service;

import java.util.*;
import com.models.*;
import com.dao.*;
import com.service.*;

/**
 * Created by Zephery on 2016/4/23.
 */
public interface IProductService{
    public int findAllProduct();
    public List getNewProduct();
    public List showProduct(int pageNow,int pageSize);
    public void addProduct(Product product);
    public Product findProduct(int id);
    public void deleteProduct(int productid);
    public void updateProduct(Product product);
    public List searchbyname(String name);
    public List showcatalogProduct(int pageNow,int pageSize,Integer catalogid);
    public int findAllCatalogProduct(Integer catalogid);
    public List getproductbydatetime();
}
