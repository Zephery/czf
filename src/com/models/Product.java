package com.models;

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Integer productid;
	private Catalog catalog;
	private String name;
	private String number;
	private String barCode;
	private String standard;
	private String casing;
	private String brief;
	private Integer price;
	private String content;
	private String summary;
	private String picture;
	private String datetime;
	private Set orderitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** minimal constructor */
	public Product(Integer productid, String name, String standard, String casing, Integer price, String picture) {
		this.productid = productid;
		this.name = name;
		this.standard = standard;
		this.casing = casing;
		this.price = price;
		this.picture = picture;
	}

	/** full constructor */
	public Product(Integer productid, Catalog catalog, String name, String number, String barCode, String standard,
			String casing, String brief, Integer price, String content, String summary, String picture, String datetime,
			Set orderitems) {
		this.productid = productid;
		this.catalog = catalog;
		this.name = name;
		this.number = number;
		this.barCode = barCode;
		this.standard = standard;
		this.casing = casing;
		this.brief = brief;
		this.price = price;
		this.content = content;
		this.summary = summary;
		this.picture = picture;
		this.datetime = datetime;
		this.orderitems = orderitems;
	}

	// Property accessors

	public Integer getProductid() {
		return this.productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public Catalog getCatalog() {
		return this.catalog;
	}

	public void setCatalog(Catalog catalog) {
		this.catalog = catalog;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getBarCode() {
		return this.barCode;
	}

	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}

	public String getStandard() {
		return this.standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getCasing() {
		return this.casing;
	}

	public void setCasing(String casing) {
		this.casing = casing;
	}

	public String getBrief() {
		return this.brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getDatetime() {
		return this.datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public Set getOrderitems() {
		return this.orderitems;
	}

	public void setOrderitems(Set orderitems) {
		this.orderitems = orderitems;
	}

}