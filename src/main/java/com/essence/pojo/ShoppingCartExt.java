package com.essence.pojo;
/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��22������2:41:45
 */
public class ShoppingCartExt extends Shoppingcart{
	private String goodsname;
	private String goodspic;
	private String goodsdescrib;
	public String getGoodsname() {
		return goodsname;
	}


	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getGoodsdescrib() {
		return goodsdescrib;
	}

	public void setGoodsdescrib(String goodsdescrib) {
		this.goodsdescrib = goodsdescrib;
	}

	public String getGoodspic() {
		return goodspic;
	}

	public void setGoodspic(String goodspic) {
		this.goodspic = goodspic;
	}
}
