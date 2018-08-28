package com.essence.dao;

import com.essence.pojo.Product;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ProductMapper {
    int deleteByPrimaryKey(String productid);
    int insert(Product record);
    Product selectByPrimaryKey(String productid);
    List<Product> selectAll();
    List<String> sizeList(String goodsid);
    List<String> colorList(String goodsid);
    Product  product(@Param("goodsid")String goodsid,@Param("size")String size,@Param("color")String color);
    int updateByPrimaryKey(Product record);
   List<Product> selectProductByGoodsId(String goodsid);
}