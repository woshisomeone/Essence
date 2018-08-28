package com.essence.pojo;

import java.util.List;

/**  
 * 商品的颜色和尺寸
 * @author xzz
 * @date 2018年8月21日下午4:48:16
 */
public class GoodsExt {
	Goods goods;
	List<String> sizelist;
	List<String> colorlist;
	List<Goodspic> goodspics;
	
	public List<Goodspic> getGoodspics() {
		return goodspics;
	}

	public void setGoodspics(List<Goodspic> goodspics) {
		this.goodspics = goodspics;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public List<String> getSizelist() {
		return sizelist;
	}

	public void setSizelist(List<String> sizelist) {
		this.sizelist = sizelist;
	}

	public List<String> getColorlist() {
		return colorlist;
	}

	public void setColorlist(List<String> colorlist) {
		this.colorlist = colorlist;
	}
	public GoodsExt() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsExt(Goods goods, List<String> sizelist, List<String> colorlist, List<Goodspic> goodspics) {
		super();
		this.goods = goods;
		this.sizelist = sizelist;
		this.colorlist = colorlist;
		this.goodspics = goodspics;
	}

}
