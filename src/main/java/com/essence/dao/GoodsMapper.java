package com.essence.dao;

import com.essence.pojo.Goods;
import com.essence.pojo.SelectItems;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface GoodsMapper {
    int deleteByPrimaryKey(String goodsid);
    int insert(Goods record);
    Goods selectByPrimaryKey(String goodsid);
    List<Goods> selectAll();
    List<Goods> selectAllByPage(@Param("currentPage")int currentPage,@Param("pageSize") int pageSize,@Param("ctype")String ctype, @Param("ptype")String ptype);
	List<Goods> selectPageByItems(@Param("currentPage")int currentPage,@Param("pageSize") int pageSize,@Param("items")SelectItems items);
    Integer count(@Param("items")SelectItems items);
    int updateByPrimaryKey(Goods record);
    Integer updateGoodsShowPic(@Param("goodspic")String goodspic,@Param("goodsid")String goodsid);
}