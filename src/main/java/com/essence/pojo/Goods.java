package com.essence.pojo;

import java.util.Date;

public class Goods {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.goodsId
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private String goodsid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.goodsName
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private String goodsname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.price
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private Double price;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.type
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private String type;


	/**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.goodsDescrib
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private String goodsdescrib;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.totalNum
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private Integer totalnum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods.goodsPic
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    private String goodspic;
    
    private Date createtime;

    public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.goodsId
     *
     * @return the value of goods.goodsId
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public String getGoodsid() {
        return goodsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.goodsId
     *
     * @param goodsid the value for goods.goodsId
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setGoodsid(String goodsid) {
        this.goodsid = goodsid == null ? null : goodsid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.goodsName
     *
     * @return the value of goods.goodsName
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public String getGoodsname() {
        return goodsname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.goodsName
     *
     * @param goodsname the value for goods.goodsName
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.price
     *
     * @return the value of goods.price
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public Double getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.price
     *
     * @param price the value for goods.price
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setPrice(Double price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.type
     *
     * @return the value of goods.type
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.type
     *
     * @param type the value for goods.type
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.goodsDescrib
     *
     * @return the value of goods.goodsDescrib
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public String getGoodsdescrib() {
        return goodsdescrib;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.goodsDescrib
     *
     * @param goodsdescrib the value for goods.goodsDescrib
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setGoodsdescrib(String goodsdescrib) {
        this.goodsdescrib = goodsdescrib == null ? null : goodsdescrib.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.totalNum
     *
     * @return the value of goods.totalNum
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public Integer getTotalnum() {
        return totalnum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.totalNum
     *
     * @param totalnum the value for goods.totalNum
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setTotalnum(Integer totalnum) {
        this.totalnum = totalnum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods.goodsPic
     *
     * @return the value of goods.goodsPic
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public String getGoodspic() {
        return goodspic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods.goodsPic
     *
     * @param goodspic the value for goods.goodsPic
     *
     * @mbg.generated Thu Aug 16 10:56:00 CST 2018
     */
    public void setGoodspic(String goodspic) {
        this.goodspic = goodspic == null ? null : goodspic.trim();
    }
}