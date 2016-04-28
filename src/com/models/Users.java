package com.models;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String username;
	private String password;
	private String email;
	private String phonenumber;
	private String sex;
	private String age;
	private String address;
	private String picture;
	private Set orderses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(Integer userid) {
		this.userid = userid;
	}

	/** full constructor */
	public Users(Integer userid, String username, String password, String email, String phonenumber, String sex,
			String age, String address, String picture, Set orderses) {
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phonenumber = phonenumber;
		this.sex = sex;
		this.age = age;
		this.address = address;
		this.picture = picture;
		this.orderses = orderses;
	}

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return this.phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return this.age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

}