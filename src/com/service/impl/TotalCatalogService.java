package com.service.impl;

import com.dao.ITotalCatalogDAO;
import com.service.ITotalCatalogService;

import java.util.List;

/**
 * Created by Zephery on 2016/4/26.
 */
public class TotalCatalogService implements ITotalCatalogService{
    private ITotalCatalogDAO totalCatalogDAO;

    public ITotalCatalogDAO getTotalCatalogDAO() {
        return totalCatalogDAO;
    }

    public void setTotalCatalogDAO(ITotalCatalogDAO totalCatalogDAO) {
        this.totalCatalogDAO = totalCatalogDAO;
    }

    public List getTotalcatalog() {
        return totalCatalogDAO.getTotalcatalog();
    }
}
