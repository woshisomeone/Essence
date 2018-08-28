package com.essence.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.essence.pojo.Evaluation;
import com.essence.pojo.Item;
import com.essence.pojo.ItemExt;
import com.essence.pojo.Orders;
import com.essence.pojo.OrdersExt;
import com.essence.pojo.ShoppingCartExt;
import com.essence.service.EvaluationService;
import com.essence.service.OrderService;
import com.essence.service.ShoppingCartService;
import com.essence.utils.CreateId;

/**  
 * 订单表控制
 * @author xzz
 * @date 2018年8月23日下午2:54:15
 */
@Controller
@RequestMapping("order")
public class OrderController {

	@Autowired
	ShoppingCartService shoppingCartService;
	@Autowired
	OrderService orderService;
	 @Autowired
	EvaluationService evaluationServic;
	
	@RequestMapping("checkout_page")
	public ModelAndView checkout_page(ModelAndView mv,double total) {
		mv.addObject("total",total);
		mv.setViewName("/front/checkOut");
		return mv;
	}

	@RequestMapping("selectFinish")
	public  ModelAndView selectFinish(String userid,ModelAndView mv) {
		List<OrdersExt> orders=orderService.selectFinishOrder_item(userid);
		for(OrdersExt order:orders)
		{
			List<ItemExt> i= order.getItemlist();
			for(ItemExt ext:i) {
				Evaluation e=evaluationServic.selectByProductAndUser(ext.getProductid(), userid,order.getOrderid());
				if(e!=null)
					ext.setEvaluation_status(1);
				else
					ext.setEvaluation_status(0);
			}
		}
		mv.addObject("orders",orders);
		mv.setViewName("/front/order");
		return mv;
	}
	
	@RequestMapping("selectNotFinish")
	public @ResponseBody List<OrdersExt>  selectNotFinish(String userid) {
		List<OrdersExt> orders=orderService.findNotFinishOrder_item(userid);
		return orders;
	}
	
	@RequestMapping("add")
	public String add(String shoppingcarid,String totalmoney) {
		String[] cartlist;
		if(shoppingcarid.contains(",")) {
			cartlist=shoppingcarid.split(",");
		}else {
			 cartlist= new String[]{shoppingcarid};
		}
		ShoppingCartExt cartExt=shoppingCartService.selectExtById(cartlist[0]);
		Orders order=new Orders(CreateId.createId(), cartExt.getUserid(), Double.valueOf(totalmoney), 0, new Date());
		List<Item> items=new ArrayList<>();
		for(String cart:cartlist) {
			ShoppingCartExt c=shoppingCartService.selectExtById(cart);
			Item item=new Item(CreateId.createId(), order.getOrderid(), c.getProductid(), c.getGoodsname(), c.getProductnum(), c.getPrice(), c.getColor(), c.getSize());
			items.add(item);
		}
		orderService.addOrder(order, items);
		return "redirect:selectFinish?userid="+cartExt.getUserid();
	}

}
