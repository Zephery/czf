package com.models;

import java.util.HashSet;
import java.util.Set;

/**
 * Totalcatalog entity. @author MyEclipse Persistence Tools
 */

public class Totalcatalog implements java.io.Serializable {

	// Fields

	private Integer totalcatalogid;
	private String totalcatalogname;
	private Set catalogs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Totalcatalog() {
	}

	/** minimal constructor */
	public Totalcatalog(Integer totalcatalogid) {
		this.totalcatalogid = totalcatalogid;
	}

	/** full constructor */
	public Totalcatalog(Integer totalcatalogid, String totalcatalogname, Set catalogs) {
		this.totalcatalogid = totalcatalogid;
		this.totalcatalogname = totalcatalogname;
		this.catalogs = catalogs;
	}

	// Property accessors

	public Integer getTotalcatalogid() {
		return this.totalcatalogid;
	}

	public void setTotalcatalogid(Integer totalcatalogid) {
		this.totalcatalogid = totalcatalogid;
	}

	public String getTotalcatalogname() {
		return this.totalcatalogname;
	}

	public void setTotalcatalogname(String totalcatalogname) {
		this.totalcatalogname = totalcatalogname;
	}

	public Set getCatalogs() {
		return this.catalogs;
	}

	public void setCatalogs(Set catalogs) {
		this.catalogs = catalogs;
	}

}