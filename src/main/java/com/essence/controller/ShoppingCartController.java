package com.essence.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essence.pojo.ShoppingCartExt;
import com.essence.pojo.Shoppingcart;
import com.essence.service.ShoppingCartService;
import com.essence.utils.CreateId;

/**  
 * 购物车
 * @author xzz
 * @date 2018年8月20日下午6:37:33
 */

@Controller
@RequestMapping("shopingcart")
public class ShoppingCartController {
	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@RequestMapping("queryCart")
	public @ResponseBody List<ShoppingCartExt> queryCart(String userid) {
		return shoppingCartService.selectCartAllProdcut(userid);
	}
	
	@RequestMapping("totalnum")
	public @ResponseBody int totalnum(String userid) {
		return shoppingCartService.selectCount(userid);
	}
	
	@RequestMapping("deleteProduct_cart")
	public @ResponseBody int deleteProduct_cart(String shoppingcarid) {
		return shoppingCartService.deleteProduct(shoppingcarid);
	}
	
	@RequestMapping("addProduct")
	public @ResponseBody int addProduct( @RequestBody Shoppingcart cart) {
		if(shoppingCartService.selectByColorandSize(cart.getUserid(), cart.getColor(), cart.getSize(), cart.getProductid())==null) {
			cart.setShoppingcarid(CreateId.createId());
			cart.setIscheck(0);
			return shoppingCartService.addProduct(cart);
		}else {
			shoppingCartService.updateProductNum(cart.getProductnum(), cart.getUserid(), cart.getColor(), cart.getSize(), cart.getProductid());
			return 0;
		}
	}
	@RequestMapping("checkout")
	public @ResponseBody double checkout (@RequestBody Shoppingcart[] carts,HttpSession session) {
		List<ShoppingCartExt> cartlist=new ArrayList<>();
		double total=0;
		for(Shoppingcart cart:carts) {
			double money=0;
			shoppingCartService.updateNumberById(cart.getShoppingcarid(), cart.getProductnum());
			ShoppingCartExt cartExt=shoppingCartService.selectExtById(cart.getShoppingcarid());
			cartlist.add(cartExt);
			money=cartExt.getPrice()*cartExt.getProductnum();
			total+=money;
		}
		session.setAttribute("cartlist", cartlist);
		return total;
	}
}
