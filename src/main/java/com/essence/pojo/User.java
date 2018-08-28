package com.essence.pojo;

import java.util.Date;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class User {
	private String userid;
	
	@NotEmpty(message="�û�������δ��~")
	private String username;
	
	@NotEmpty(message="���벻��Ϊ��~")
	@Length(min=6,max=16,message="���볤����6-16֮��~")
	private String pwd;
	
	private String sex;
	
	 @NotEmpty(message="�ֻ����벻����Ϊ��!")
	 @Pattern(regexp="^1[34578]\\d{9}$",message="�ֻ������ʽ����ȷ~")
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