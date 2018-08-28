package com.essence.utils;

import java.sql.SQLException;
import java.util.List;

import com.essence.pojo.Goods;
import com.essence.pojo.PageBean;
import com.essence.pojo.SelectItems;
import com.essence.service.GoodsService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月20日下午10:16:22
 */
public class Page {
	public static PageBean page(int currentPage,int pageSize,GoodsService goodsService,String ctype, String ptype) throws SQLException {
		PageBean page=new PageBean();
		int count=9;
		int totalPage=(count%pageSize)==0?count/pageSize:count/pageSize+1;
		int curr=(currentPage-1)*pageSize;
		List<Goods> goodslist=goodsService.selectAllByPage(curr, pageSize,ctype,ptype);
		page.setPageSize(pageSize);
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotalPage(totalPage);
		page.setGoods(goodslist);
		return page;
	}
	
	public static PageBean page_SelctItems(int currentPage,int pageSize,GoodsService goodsService,SelectItems items) throws SQLException {
		PageBean page=new PageBean();
		int count=goodsService.count(items);
		int totalPage=(count%pageSize)==0?count/pageSize:count/pageSize+1;
		int curr=(currentPage-1)*pageSize;
		List<Goods> goodslist=goodsService.selectPageByItems(curr, pageSize, items);
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotalPage(totalPage);
		page.setGoods(goodslist);
		return page;
	}
}
