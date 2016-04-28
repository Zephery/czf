package com.models;

import java.util.HashSet;
import java.util.Set;

/**
 * Catalog entity. @author MyEclipse Persistence Tools
 */

public class Catalog implements java.io.Serializable {

	// Fields

	private Integer catalogid;
	private Totalcatalog totalcatalog;
	private String catalogname;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Catalog() {
	}

	/** minimal constructor */
	public Catalog(Integer catalogid) {
		this.catalogid = catalogid;
	}

	/** full constructor */
	public Catalog(Integer catalogid, Totalcatalog totalcatalog, String catalogname, Set products) {
		this.catalogid = catalogid;
		this.totalcatalog = totalcatalog;
		this.catalogname = catalogname;
		this.products = products;
	}

	// Property accessors

	public Integer getCatalogid() {
		return this.catalogid;
	}

	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}

	public Totalcatalog getTotalcatalog() {
		return this.totalcatalog;
	}

	public void setTotalcatalog(Totalcatalog totalcatalog) {
		this.totalcatalog = totalcatalog;
	}

	public String getCatalogname() {
		return this.catalogname;
	}

	public void setCatalogname(String catalogname) {
		this.catalogname = catalogname;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}