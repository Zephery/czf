package com.service.impl;

import com.dao.ICatalogDAO;
import com.service.ICatalogService;

import java.util.List;

/**
 * Created by Zephery on 2016/4/24.
 */
public class CatalogService implements ICatalogService {
    private ICatalogDAO catalogDAO;

    public List getAllCatalogs() {
        return catalogDAO.getAllCatalogs();
    }

    public ICatalogDAO getCatalogDAO() {
        return catalogDAO;
    }

    public void setCatalogDAO(ICatalogDAO catalogDAO) {
        this.catalogDAO = catalogDAO;
    }

    public List getAllCatalogsbyid(int totalcatalogid) {
        return catalogDAO.getAllCatalogsbyid(totalcatalogid);
    }
}