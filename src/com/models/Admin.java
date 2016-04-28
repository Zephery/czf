package com.models;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private String id;
	private String adminname;
	private String password;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** minimal constructor */
	public Admin(String id) {
		this.id = id;
	}

	/** full constructor */
	public Admin(String id, String adminname, String password) {
		this.id = id;
		this.adminname = adminname;
		this.password = password;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAdminname() {
		return this.adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}