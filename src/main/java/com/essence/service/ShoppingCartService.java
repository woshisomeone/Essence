package com.essence.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.essence.pojo.ShoppingCartExt;
import com.essence.pojo.Shoppingcart;

/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��21������3:35:18
 */
public interface ShoppingCartService {
	int addProduct(Shoppingcart cart);
	List<ShoppingCartExt>selectCartAllProdcut(String userid);
	 Integer selectCount(String userid);
	 Shoppingcart selectByColorandSize(String userid,String color,String size,String productid);
	 int updateProductNum(int num,String userid,String color,String size,String productid);
	 int deleteProduct(String Shoppingcartid);
	 int updateNumberById(String Shoppingcartid,int  productnum);
	 ShoppingCartExt selectExtById(String shoppingcarid);
}
