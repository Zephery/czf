package com.service.impl;

import com.dao.IProductDAO;
import com.models.Product;
import com.service.IProductService;

import java.util.List;

/**
 * Created by Zephery on 2016/4/23.
 */
public class ProductService implements IProductService {
    protected IProductDAO productDAO;

    public IProductDAO getProductDAO() {
        return productDAO;
    }

    public void setProductDAO(IProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    public int findAllProduct() {
        return productDAO.findAllProduct();
    }

    public List getNewProduct() {
        return productDAO.getNewProduct();
    }

    public List showProduct(int pageNow, int pageSize) {
        return productDAO.showProduct(pageNow, pageSize);
    }

    public void addProduct(Product product) {
        productDAO.addProduct(product);
    }

    public Product findProduct(int id) {
        return productDAO.findProduct(id);
    }

    public void deleteProduct(int id) {
        productDAO.deleteProduct(id);
    }

    public void updateProduct(Product product) {
        productDAO.updateProduct(product);
    }

    public List searchbyname(String name) {
        return productDAO.searchbyname(name);
    }

    public List showcatalogProduct(int pageNow, int pageSize, Integer catalogid) {
        return productDAO.showcatalogProduct(pageNow, pageSize, catalogid);
    }

    public int findAllCatalogProduct(Integer catalogid) {
        return productDAO.findAllCatalogProduct(catalogid);
    }

    public List getproductbydatetime() {
        return productDAO.getproductbydatetime();
    }

}
