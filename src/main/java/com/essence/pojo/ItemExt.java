package com.essence.pojo;
/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��24������8:49:46
 */
public class ItemExt extends Item{
	String goodspic;
	Integer evaluation_status;
	String goodsid;

	public String getGoodspic() {
		return goodspic;
	}

    public void setGoodspic(String goodspic) {
        this.goodspic = goodspic == null ? null : goodspic.trim();
    }

	public String getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public Integer getEvaluation_status() {
		return evaluation_status;
	}

	public void setEvaluation_status(Integer evaluation_status) {
		this.evaluation_status = evaluation_status;
	}
	

}
