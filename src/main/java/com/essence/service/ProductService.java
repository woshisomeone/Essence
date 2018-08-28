package com.essence.service;

import java.util.List;

import com.essence.pojo.Product;

/**  
 * 货品
 * @author xzz
 * @date 2018年8月17日上午11:24:47
 */
public interface ProductService {
	int addProduct(Product product);
	List<Product>queryProductByGoodsId(String goodsid);
    List<String> sizeList(String goodsid);
    List<String> colorList(String goodsid);
    Product product(String goodsid,String size,String color);
}
