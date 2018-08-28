package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.GoodsMapper;
import com.essence.dao.GoodspicMapper;
import com.essence.pojo.Goods;
import com.essence.pojo.Goodspic;
import com.essence.pojo.SelectItems;
import com.essence.service.GoodsService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月16日上午11:02:19
 */
@Service
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	GoodsMapper goodsMapper;
	@Autowired
	GoodspicMapper goodspicMapper;


	@Override
	public int addGoods(Goods goods) {
		return goodsMapper.insert(goods);	
	}

	@Override
	public Integer updateGoodsShowPic(String goodspic,String goodsid) {
		return goodsMapper.updateGoodsShowPic(goodspic,goodsid);
	}

	@Override
	public Goods queryGoodsByKey(String goodsid) {
		return goodsMapper.selectByPrimaryKey(goodsid);
	}

	@Override
	public int addGoodsPic(Goodspic goodspic) {
		return goodspicMapper.insert(goodspic);
	}

	@Override
	public List<Goods> queryAllGoods() {
		return goodsMapper.selectAll();
	}

	@Override
	public List<Goodspic> queryGoodsPic(String goodsid) {
		return goodspicMapper.selectByGoodsid(goodsid);
	}

	@Override
	public List<Goods> selectAllByPage(int currentPage, int pageSize,String ctype,String ptype) {
		return goodsMapper.selectAllByPage(currentPage, pageSize,ctype,ptype);
	}

	@Override
	public Integer count(SelectItems items) {
		return goodsMapper.count(items);
	}

	@Override
	public List<Goods> selectPageByItems(int currentPage, int pageSize, SelectItems items) {
		return goodsMapper.selectPageByItems(currentPage, pageSize, items);
	}

	
}
