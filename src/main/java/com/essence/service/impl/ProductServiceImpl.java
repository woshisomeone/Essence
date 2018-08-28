package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.AdminMapper;
import com.essence.dao.ProductMapper;
import com.essence.dao.UserMapper;
import com.essence.pojo.Admin;
import com.essence.pojo.Product;
import com.essence.pojo.User;
import com.essence.service.AdminService;
import com.essence.service.ProductService;
import com.essence.service.UserService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月16日上午11:02:19
 */
@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductMapper productMapper;
	
	@Override
	public int addProduct(Product product) {
		return productMapper.insert(product);
	}

	@Override
	public List<Product> queryProductByGoodsId(String goodsid) {
		return productMapper.selectProductByGoodsId(goodsid);
	}

	@Override
	public List<String> sizeList(String goodsid) {
		return productMapper.sizeList(goodsid);
	}

	@Override
	public List<String> colorList(String goodsid) {
		return productMapper.colorList(goodsid);
	}

	@Override
	public Product product(String goodsid, String size, String color) {
		return productMapper.product(goodsid, size, color);
	}
	
	

}
