package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.ItemMapper;
import com.essence.dao.OrdersMapper;
import com.essence.pojo.Item;
import com.essence.pojo.Orders;
import com.essence.pojo.OrdersExt;
import com.essence.service.OrderService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月24日上午10:50:09
 */
@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrdersMapper orderMapper;
	@Autowired
	ItemMapper itemMapper;
	
	@Override
	public int addOrder(Orders order, List<Item> items) {
		orderMapper.insert(order);
		for(Item item:items)
			itemMapper.insert(item);
		return 0;
	}


	@Override
	public List<Item> selectByOrders(String ordersid) {
		return itemMapper.selectByOrders(ordersid);
	}

	@Override
	public List<OrdersExt> findNotFinishOrder_item(String userid) {
		return orderMapper.selectNotFinishOrder_item(userid);
	}

	@Override
	public List<OrdersExt> selectFinishOrder_item(String userid) {
		return orderMapper.selectFinishOrder_item(userid);
	}

}
