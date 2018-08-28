package com.essence.service;

import java.util.List;


import com.essence.pojo.Item;
import com.essence.pojo.Orders;
import com.essence.pojo.OrdersExt;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月24日上午10:49:49
 */
public interface OrderService {

	int addOrder(Orders order, List<Item> items);
	
	List<Item> selectByOrders(String ordersid);
	
	List<OrdersExt> findNotFinishOrder_item(String userid);
	List<OrdersExt> selectFinishOrder_item(String userid);
	
}
