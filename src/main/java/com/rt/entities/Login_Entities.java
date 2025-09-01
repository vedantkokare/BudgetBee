package com.rt.entities;

public class Login_Entities {
	
	private int id;
	private String name;
	private String email;
	private String pwd;
	private String confirm_pwd;
	
	public Login_Entities() {
		super();
	}
	public Login_Entities(String name, String email, String pwd, String confirm_pwd) {
		super();
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.confirm_pwd = confirm_pwd;
	}
	public Login_Entities(int id, String name, String email, String pwd, String confirm_pwd) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.confirm_pwd = confirm_pwd;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getConfirm_pwd() {
		return confirm_pwd;
	}
	public void setConfirm_pwd(String confirm_pwd) {
		this.confirm_pwd = confirm_pwd;
	}
	

}
