package com.essence.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Orders {
    private String orderid;
    private String userid;
    private Double totalmoney;
    private Integer orderstatus;
    @DateTimeFormat(pattern = "yyyy-MM-dd") 
    private Date createtime;

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(Double totalmoney) {
        this.totalmoney = totalmoney;
    }

    public Integer getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(Integer orderstatus) {
        this.orderstatus = orderstatus;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
    
    public Orders() {
		super();
	}

	public Orders(String orderid, String userid, Double totalmoney, Integer orderstatus, Date createtime) {
		super();
		this.orderid = orderid;
		this.userid = userid;
		this.totalmoney = totalmoney;
		this.orderstatus = orderstatus;
		this.createtime = createtime;
	}
}