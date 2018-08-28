package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.ShoppingcartMapper;
import com.essence.pojo.ShoppingCartExt;
import com.essence.pojo.Shoppingcart;
import com.essence.service.ShoppingCartService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月22日上午10:57:41
 */
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	@Autowired
	ShoppingcartMapper shoppingcartMapper;
	
	@Override
	public int addProduct(Shoppingcart cart) {
		return shoppingcartMapper.insert(cart);
	}

	@Override
	public List<ShoppingCartExt> selectCartAllProdcut(String userid) {
		shoppingcartMapper.selectCount(userid);
		return shoppingcartMapper.selectCartAllProdcut(userid);
	}

	@Override
	public Integer selectCount(String userid) {
		return shoppingcartMapper.selectCount(userid);
	}

	@Override
	public Shoppingcart selectByColorandSize(String userid, String color, String size, String productid) {
		return shoppingcartMapper.selectByColorandSize(userid, color, size, productid);
	}

	@Override
	public int updateProductNum(int num, String userid, String color, String size, String productid) {
		return shoppingcartMapper.updateProductNum(num, userid, color, size, productid);
	}

	@Override
	public int deleteProduct(String Shoppingcartid) {
		return shoppingcartMapper.deleteByPrimaryKey(Shoppingcartid);
	}

	@Override
	public int updateNumberById(String Shoppingcartid, int productnum) {
		return shoppingcartMapper.updateNumberById(Shoppingcartid, productnum);
	}

	@Override
	public ShoppingCartExt selectExtById(String shoppingcarid) {
		return shoppingcartMapper.selectExtById(shoppingcarid);
	}



}
