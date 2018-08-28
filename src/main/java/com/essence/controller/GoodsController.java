package com.essence.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.essence.pojo.Goods;
import com.essence.pojo.Goodspic;
import com.essence.pojo.PageBean;
import com.essence.pojo.Product;
import com.essence.pojo.SelectItems;
import com.essence.pojo.Type;
import com.essence.service.GoodsService;
import com.essence.service.ProductService;

import com.essence.utils.CreateId;
import com.essence.utils.Page;

/**  
 * 货品的增删改查
 * @author xzz
 * @date 2018年8月16日上午11:01:18
 */
@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	GoodsService goodsService;
	@Autowired
	ProductService productService;
	
	@RequestMapping("goods_operation")
	public String goodsView() {
		return "/behind/goods_operation";
	}
	
	@RequestMapping(value="addGoods")
	public @ResponseBody Goods addGoods(Goods goods,HttpSession session) {
		goods.setGoodsid(CreateId.createId());
		goods.setCreatetime(new Date());
		goodsService.addGoods(goods);
		session.setAttribute("goods",goods);
		return goods;
	}
	
	@RequestMapping(value="addProduct")
	public @ResponseBody String addProduct(Product product) {
		product.setProductid(product.getGoodsid()+"-"+product.getSize()+new Random().nextInt(100));
		System.out.println();
		productService.addProduct(product);
		return "yes";
	}
	@RequestMapping("findGoodsByPage")
	public  @ResponseBody PageBean findGoodsByPage(int currentPage,Integer pageSize,String ctype,String ptype) throws SQLException {
		if(pageSize==null)
			pageSize=4;
	   PageBean page= Page.page(currentPage, pageSize,goodsService,ctype,ptype);
		return page;
	}
	
	@RequestMapping("findGoodsBySelectItems")
	public  @ResponseBody PageBean findGoodsBySelectItems(int currentPage,Integer pageSize,@RequestBody SelectItems items) throws SQLException {
		if(pageSize==null)
			pageSize=4;
	      PageBean page= Page.page_SelctItems(currentPage, pageSize, goodsService, items);
	      int num=goodsService.count(items);
	      page.setTotalnum(num);
		return page;
	}
	
	@RequestMapping("goodsList")
	public @ResponseBody List<Goods>goodsList(String goodsid) {
		if(goodsid!=null&&!goodsid.equals("")) {
			List<Goods> goodslist=new ArrayList<>();
			goodslist.add(goodsService.queryGoodsByKey(goodsid));
			return goodslist;
		}
		return null;	
	}
	
	@RequestMapping("productList")
	public @ResponseBody List<Product>productList(String goodsid){
		return 	productService.queryProductByGoodsId(goodsid);
	}
	
	@RequestMapping("goodspicList")
	public @ResponseBody List<Goodspic> goodspicList(String goodsid){
		return goodsService.queryGoodsPic(goodsid);
	}
	
	@RequestMapping("updateGoodsShowPic")
	public @ResponseBody String updateGoodsPic(MultipartFile file,String goodsid) throws IllegalStateException, IOException {
		String oldname=file.getOriginalFilename();
		String suffix=oldname.substring(oldname.lastIndexOf("."));
		String newname=goodsid+"/"+CreateId.createId()+suffix;
		File path=new File("C:\\Users\\13941\\Pictures\\Camera Roll\\"+newname);
		if(!path.exists()) {
			path.mkdirs();
		}
		file.transferTo(path);
		goodsService.updateGoodsShowPic(newname,goodsid);
		return "{\"success\":\"yes\"}";
	}
	
	@RequestMapping("addGoodsPic")
	public @ResponseBody String addGoodsPic(MultipartFile file,String goodsid) throws IllegalStateException, IOException {
		if(file.getName()!="") {
			String oldname=file.getOriginalFilename();
			String suffix=oldname.substring(oldname.lastIndexOf("."));
			String newname=CreateId.createId()+suffix;
			String picname=goodsid+"/"+newname;
			File path=new File("C:\\Users\\13941\\Pictures\\Camera Roll\\"+picname);
			if(!path.exists()) 
				path.mkdirs();
			file.transferTo(path);
			Goodspic goodspic=new Goodspic(CreateId.createId(), goodsid, picname);
			goodsService.addGoodsPic(goodspic);
			return "{\"success\":\"yes\"}";
		}else {
			return "{\"fail\":\"no\"}";
		}
	}
}
