package com.essence.service;

import java.util.List;

import com.essence.pojo.Product;

/**  
 * ��Ʒ
 * @author xzz
 * @date 2018��8��17������11:24:47
 */
public interface ProductService {
	int addProduct(Product product);
	List<Product>queryProductByGoodsId(String goodsid);
    List<String> sizeList(String goodsid);
    List<String> colorList(String goodsid);
    Product product(String goodsid,String size,String color);
}
