package com.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

import com.models.Catalog;
import com.models.Product;
import com.models.Totalcatalog;
import com.opensymphony.xwork2.*;
import com.tool.Pager;
import com.service.*;
import org.apache.commons.httpclient.Cookie;
import org.apache.struts2.ServletActionContext;
import org.apache.commons.io.FileUtils;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by Zephery on 2016/4/23.
 */
public class ProductAction extends ActionSupport {
    private int pageNow = 1;
    private int pageSize = 12;     //its not useful to change this
    private Product product;
    private File zpFile;
    private Integer id;
    private Integer currentPage = 1;
    private String filename;
    private IProductService productService;
    private ICatalogService catalogService;
    private String name;

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public File getZpFile() {
        return zpFile;
    }

    public void setZpFile(File zpFile) {
        this.zpFile = zpFile;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public IProductService getProductService() {
        return productService;
    }

    public void setProductService(IProductService productService) {
        this.productService = productService;
    }


    public ICatalogService getCatalogService() {
        return catalogService;
    }

    public void setCatalogService(ICatalogService catalogService) {
        this.catalogService = catalogService;
    }

    public String findAllProduct() throws Exception {      // find the number of all products
        int total = productService.findAllProduct();
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("total", total);
        return SUCCESS;
    }

    public String getNewProduct() throws Exception {        //get new Product
        List newproducts = productService.getNewProduct();
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("newproducts", newproducts);
        return SUCCESS;
    }

    public String showProduct() throws Exception {             //show all product
        int totalSize = productService.findAllProduct();
        Pager pager = new Pager(getPageNow(), totalSize);
        if (totalSize % pageSize == 0) {
            pager.setTotalPage(totalSize / pageSize);
        } else {
            pager.setTotalPage(totalSize / pageSize + 1);
        }
        List products = productService.showProduct(getPageNow(), pageSize);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("products", products);
        request.put("pager", pager);
        return SUCCESS;
    }


    public String addProduct() throws Exception {
        Product product0 = new Product();
        int add_id = product.getProductid();
        if (productService.findProduct(add_id) != null) {
            return ERROR;
        }
        product0.setProductid(product.getProductid());
        product0.setName(product.getName());
        product0.setNumber(product.getNumber());
        product0.setBarCode(product.getBarCode());
        product0.setStandard(product.getStandard());
        product0.setCasing(product.getCasing());
        product0.setPrice(product.getPrice());
        product0.setBrief(product.getBrief());
        product0.setPrice(product.getPrice());
        product0.setContent(product.getContent());
        try {
            String targetDirectory = ServletActionContext.getServletContext().getRealPath("/images");
            //rename and upload
            String targetFileName = generateFileName(zpFile.getName());
            // create file
            File target = new File(targetDirectory, targetFileName);
            //copy file
            FileUtils.copyFile(zpFile, target);
            product0.setPicture(targetFileName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        productService.addProduct(product0);
        return SUCCESS;
    }

    public String generateFileName(String fileName) {       //datatime.picture
        String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
        int random = new Random().nextInt(10000);
        int position = fileName.lastIndexOf(".");
        String extension = fileName.substring(position);
        return formatDate + random + extension;
    }

    public String deleteProduct() throws Exception {
        int id0 = product.getProductid();
        productService.deleteProduct(id0);
        return SUCCESS;
    }

    public String updateview() throws Exception {      //jump to updateview.jsp
        int id1 = product.getProductid();
        Product product = productService.findProduct(id1);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("product", product);
        return SUCCESS;
    }

    public String update() throws Exception {           //update product Fail
        Product product0 = productService.findProduct(product.getProductid());
        product0.setName(product.getName());
        product0.setNumber(product.getNumber());
        product0.setStandard(product.getStandard());
        product0.setCasing(product.getCasing());
        product0.setPrice(product.getPrice());
        productService.updateProduct(product0);
        return SUCCESS;
    }

    public String searchProduct() throws Exception {
        List products = productService.searchbyname(this.getName());
        if (products != null) {
            Map request = (Map) ActionContext.getContext().get("request");
            request.put("products", products);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String getdetailproduct() throws Exception {
        int id0 = product.getProductid();
        Product product0 = productService.findProduct(id0);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("products", product0);
        return SUCCESS;
    }


    private Catalog catalog;

    public Catalog getCatalog() {
        return catalog;
    }

    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
    }

    private Integer catalogid;

    public Integer getCatalogid() {
        return catalogid;
    }

    public void setCatalogid(Integer catalogid) {
        this.catalogid = catalogid;
    }

    public String catalogProductdetail() throws Exception {
        int totalSize = productService.findAllCatalogProduct(catalog.getCatalogid());
        Pager pager = new Pager(getPageNow(), totalSize);
        if (totalSize % pageSize == 0) {
            pager.setTotalPage(totalSize / pageSize);
        } else {
            pager.setTotalPage(totalSize / pageSize + 1);
        }
        List products = productService.showcatalogProduct(getPageNow(), pageSize, catalog.getCatalogid());
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("products", products);
        request.put("pager", pager);
        return SUCCESS;
    }

    private Totalcatalog totalcatalog;

    public Totalcatalog getTotalcatalog() {
        return totalcatalog;
    }

    public void setTotalcatalog(Totalcatalog totalcatalog) {
        this.totalcatalog = totalcatalog;
    }

    private ITotalCatalogService totalCatalogService;

    public ITotalCatalogService getTotalCatalogService() {
        return totalCatalogService;
    }

    public void setTotalCatalogService(ITotalCatalogService totalCatalogService) {
        this.totalCatalogService = totalCatalogService;
    }

    public String tomenu() throws Exception {
        List totalcatalogs = totalCatalogService.getTotalcatalog();
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("totalcatalogs", totalcatalogs);
        return SUCCESS;
    }

    private Integer totalcatalogid;

    public Integer getTotalcatalogid() {
        return totalcatalogid;
    }

    public void setTotalcatalogid(Integer totalcatalogid) {
        this.totalcatalogid = totalcatalogid;
    }

    public String tomenulist() throws Exception {
        int totalcatalogid0 = getTotalcatalogid();
        List catalogs00 = catalogService.getAllCatalogsbyid(totalcatalogid0);
        Map request = (Map) ActionContext.getContext().get("request");
        request.put("catalogs00", catalogs00);
        return SUCCESS;
    }

}