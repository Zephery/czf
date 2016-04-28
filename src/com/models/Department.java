package com.models;

/**
 * Department entity. @author MyEclipse Persistence Tools
 */

public class Department implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String address;
	private String phoneNumber;
	private String mobileNumber;
	private String brief;
	private String picture;

	// Constructors

	/** default constructor */
	public Department() {
	}

	/** minimal constructor */
	public Department(Integer id, String name, String address) {
		this.id = id;
		this.name = name;
		this.address = address;
	}

	/** full constructor */
	public Department(Integer id, String name, String address, String phoneNumber, String mobileNumber, String brief,
			String picture) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.mobileNumber = mobileNumber;
		this.brief = brief;
		this.picture = picture;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMobileNumber() {
		return this.mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getBrief() {
		return this.brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

}