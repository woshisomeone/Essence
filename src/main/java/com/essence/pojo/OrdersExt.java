package com.essence.pojo;

import java.util.List;

/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��24������5:37:11
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
