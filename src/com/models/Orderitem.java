package com.models;

/**
 * Orderitem entity. @author MyEclipse Persistence Tools
 */

public class Orderitem implements java.io.Serializable {

	// Fields

	private Integer orderitemid;
	private Orders orders;
	private Product product;
	private Integer quantity;

	// Constructors

	/** default constructor */
	public Orderitem() {
	}

	/** full constructor */
	public Orderitem(Orders orders, Product product, Integer quantity) {
		this.orders = orders;
		this.product = product;
		this.quantity = quantity;
	}

	// Property accessors

	public Integer getOrderitemid() {
		return this.orderitemid;
	}

	public void setOrderitemid(Integer orderitemid) {
		this.orderitemid = orderitemid;
	}

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

}