package com.essence.pojo;

public class Evaluation {
    private String evaluationid;
    private String orderid;
    private String productid;
    private String userid;
    private Integer status;
    private String qulity;
    private String suit;
    private String look;
    private String message;
    public String getEvaluationid() {
        return evaluationid;
    }
    public void setEvaluationid(String evaluationid) {
        this.evaluationid = evaluationid == null ? null : evaluationid.trim();
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
    public String getUserid() {
        return userid;
    }
    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }
    public Integer getStatus() {
        return status;
    }
    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getQulity() {
        return qulity;
    }
    public void setQulity(String qulity) {
        this.qulity = qulity == null ? null : qulity.trim();
    }
    public String getSuit() {
        return suit;
    }

    public void setSuit(String suit) {
        this.suit = suit == null ? null : suit.trim();
    }

    public String getLook() {
        return look;
    }

    public void setLook(String look) {
        this.look = look == null ? null : look.trim();
    }
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }
}