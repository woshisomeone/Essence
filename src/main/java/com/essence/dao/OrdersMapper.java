package com.essence.dao;

import com.essence.pojo.Orders;
import com.essence.pojo.OrdersExt;

import java.util.List;

public interface OrdersMapper {
    int deleteByPrimaryKey(String orderid);
    int insert(Orders record);
    Orders selectByPrimaryKey(String ordersid);
    List<Orders> selectAll();
    List<OrdersExt>selectNotFinishOrder_item(String userid);
    List<OrdersExt> selectFinishOrder_item(String userid);
    int updateByPrimaryKey(Orders record);
}