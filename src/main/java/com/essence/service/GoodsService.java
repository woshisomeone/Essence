package com.essence.service;

import java.util.List;

import com.essence.pojo.Goods;
import com.essence.pojo.Goodspic;
import com.essence.pojo.SelectItems;

/**  
 * ��Ʒ
 * @author xzz
 * @date 2018��8��17������11:24:47
 */
public interface GoodsService {
	int addGoods(Goods goods);
	Integer updateGoodsShowPic(String goodspic,String goodsid);
	Goods queryGoodsByKey(String goodsid);
	int addGoodsPic(Goodspic goodspic);
	List<Goods> queryAllGoods();
	List<Goodspic> queryGoodsPic(String goodsid);
	List<Goods> selectAllByPage(int currentPage,int pageSize,String ctype, String ptype);
	List<Goods> selectPageByItems(int currentPage,int pageSize,SelectItems items);
	Integer count(SelectItems items);
}
