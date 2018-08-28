package com.essence.controller;

import java.sql.SQLException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.essence.pojo.Evaluation;
import com.essence.pojo.EvaluationExt;
import com.essence.pojo.EvaluationExt1;
import com.essence.pojo.Goods;
import com.essence.pojo.GoodsExt;
import com.essence.pojo.Goodspic;
import com.essence.pojo.PageBean;
import com.essence.pojo.Product;
import com.essence.pojo.SelectItems;
import com.essence.pojo.Type;
import com.essence.pojo.TypeExt;
import com.essence.service.EvaluationService;
import com.essence.service.GoodsService;
import com.essence.service.ProductService;
import com.essence.service.TypeService;
import com.essence.utils.Page;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月20日下午9:49:39
 */
@Controller
public class ShopController {
	
	@Autowired
	GoodsService goodsService;
	@Autowired
	ProductService productService;
	@Autowired
	EvaluationService evaluationService;
	@Autowired
	TypeService typeService;
	
	
	@RequestMapping("shop")
	public String shop(Model model,SelectItems items) throws SQLException {
		PageBean page=null;
		if(items!=null) {
			 page= Page.page_SelctItems(1, 9, goodsService, items);
		}
		page.setTotalnum(goodsService.count(items));
		List<TypeExt> typeExt = typeService.selectParentAndChild();
		model.addAttribute("typeExt",typeExt);
		model.addAttribute("page",page);
		return "/front/shop";
	}
	
	@RequestMapping("product_detail")
	public ModelAndView product_details(ModelAndView mv,String goodsid) throws SQLException {
		Goods goods=goodsService.queryGoodsByKey(goodsid);
		List<Goodspic>goodspics=goodsService.queryGoodsPic(goodsid);
		List<String> colorlist=productService.colorList(goodsid);
		List<String> sizelist=productService.sizeList(goodsid);
		GoodsExt goodsExt=new GoodsExt(goods, sizelist, colorlist,goodspics);
		mv.addObject("goodsExt", goodsExt);
		List<EvaluationExt1> evaluations = evaluationService.selectAllByGoods(goodsid);
		EvaluationExt ext = null;
		if(evaluations.size()!=0) {
		     ext=evaluationService.countTag(goodsid);
		}else {
			ext=new EvaluationExt(0, 0, 0, 0, 0, 0, 0, 0, 0);
		}
		ext.setEvaluationlist(evaluations);
		mv.addObject("ext", ext);
		mv.setViewName("/front/product_detail");
		return mv;
	}
	
	@RequestMapping("getProduct")
	public @ResponseBody Product getProduct(String goodsid,String size,String color) {
		return productService.product(goodsid, size, color);
	}
	
}
