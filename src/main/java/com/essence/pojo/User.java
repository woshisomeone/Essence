package com.essence.pojo;

import java.util.Date;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class User {
	private String userid;
	
	@NotEmpty(message="用户名不能未空~")
	private String username;
	
	@NotEmpty(message="密码不能为空~")
	@Length(min=6,max=16,message="密码长度在6-16之间~")
	private String pwd;
	
	private String sex;
	
	 @NotEmpty(message="手机号码不允许为空!")
	 @Pattern(regexp="^1[34578]\\d{9}$",message="手机号码格式不正确~")
	private String phone;

	private Date createtime;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid == null ? null : userid.trim();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd == null ? null : pwd.trim();
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex == null ? null : sex.trim();
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
}