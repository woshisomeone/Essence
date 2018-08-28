package com.essence.pojo;

import java.util.List;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月24日下午5:37:11
 */
public class OrdersExt extends Orders{
	List<ItemExt> itemlist;

	public List<ItemExt> getItemlist() {
		return itemlist;
	}

	public void setItemlist(List<ItemExt> itemlist) {
		this.itemlist = itemlist;
	}


	
	
}
