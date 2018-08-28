package com.essence.pojo;


/**  
 * 筛选条件  
 * @author xzz
 * @date 2018年8月27日下午5:36:06
 */

public class SelectItems {
	private String ptype;
	private String ctype;
	private double maxprice;
	private double minprice;
	private String color;
	private String order;
	
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public double getMaxprice() {
		return maxprice;
	}
	public void setMaxprice(double maxprice) {
		this.maxprice = maxprice;
	}
	public double getMinprice() {
		return minprice;
	}
	public void setMinprice(double minprice) {
		this.minprice = minprice;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public SelectItems() {
		super();
	}
}
