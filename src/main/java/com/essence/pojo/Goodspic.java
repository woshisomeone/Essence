package com.essence.pojo;

public class Goodspic {
    private String picid;
    private String goodsid;
    private String picname;
    
    public Goodspic() {
		super();
	}
	public Goodspic(String picid, String goodsid, String picname) {
		super();
		this.picid = picid;
		this.goodsid = goodsid;
		this.picname = picname;
	}
	public String getPicid() {
        return picid;
    }
    public void setPicid(String picid) {
        this.picid = picid == null ? null : picid.trim();
    }
    public String getGoodsid() {
        return goodsid;
    }
    public void setGoodsid(String goodsid) {
        this.goodsid = goodsid == null ? null : goodsid.trim();
    }
    public String getPicname() {
        return picname;
    }
    public void setPicname(String picname) {
        this.picname = picname == null ? null : picname.trim();
    }
}