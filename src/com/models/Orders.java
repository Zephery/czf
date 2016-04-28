package com.models;

import java.util.HashSet;
import java.util.Set;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Users users;
	private Integer allprice;
	private String orderdate;
	private String send;
	private Set orderitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** minimal constructor */
	public Orders(Integer orderid) {
		this.orderid = orderid;
	}

	/** full constructor */
	public Orders(Integer orderid, Users users, Integer allprice, String orderdate, String send, Set orderitems) {
		this.orderid = orderid;
		this.users = users;
		this.allprice = allprice;
		this.orderdate = orderdate;
		this.send = send;
		this.orderitems = orderitems;
	}

	// Property accessors

	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Integer getAllprice() {
		return this.allprice;
	}

	public void setAllprice(Integer allprice) {
		this.allprice = allprice;
	}

	public String getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getSend() {
		return this.send;
	}

	public void setSend(String send) {
		this.send = send;
	}

	public Set getOrderitems() {
		return this.orderitems;
	}

	public void setOrderitems(Set orderitems) {
		this.orderitems = orderitems;
	}

}