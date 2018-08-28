package com.essence.pojo;

public class Item {
  
    private String itemid;
    private String orderid;
    private String productid;
    private String productname;
    private Integer productnum;
    private Double price;
    private String color;
    private String size;
    
    public Item(String itemid, String orderid, String productid, String productname, Integer productnum, Double price,
			String color, String size) {
		super();
		this.itemid = itemid;
		this.orderid = orderid;
		this.productid = productid;
		this.productname = productname;
		this.productnum = productnum;
		this.price = price;
		this.color = color;
		this.size = size;
	}

	public Item() {
		super();
	}

	public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid == null ? null : itemid.trim();
    }

    public String getOrderid() {
        return orderid;
    }
    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }
    public String getProductid() {
        return productid;
    }
    public void setProductid(String productid) {
        this.productid = productid == null ? null : productid.trim();
    }
    public String getProductname() {
        return productname;
    }
    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }
    public Integer getProductnum() {
        return productnum;
    }
    public void setProductnum(Integer productnum) {
        this.productnum = productnum;
    }
    public Double getPrice() {
        return price;
    }
    public void setPrice(Double price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }
}