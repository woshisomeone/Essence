package com.essence.dao;

import com.essence.pojo.ShoppingCartExt;
import com.essence.pojo.Shoppingcart;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ShoppingcartMapper {
    int deleteByPrimaryKey(String shoppingcarid);
    int insert(Shoppingcart record);
    Shoppingcart selectByPrimaryKey(String shoppingcarid);
    ShoppingCartExt selectExtById(String shoppingcarid);
    List<Shoppingcart> selectAll();
    List<ShoppingCartExt>selectCartAllProdcut(String userid);
    Integer selectCount(String userid);
    Shoppingcart selectByColorandSize(@Param("userid")String userid,@Param("color")String color,@Param("size")String size,@Param("productid")String productid);
    int updateByPrimaryKey(Shoppingcart record);
    int updateNumberById(@Param("shoppingcarid")String shoppingcarid,@Param("productnum")int  productnum);
    int updateProductNum(@Param("num")int num,@Param("userid")String userid,@Param("color")String color,@Param("size")String size,@Param("productid")String productid);
}