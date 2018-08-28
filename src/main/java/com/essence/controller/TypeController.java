package com.essence.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essence.pojo.Size;
import com.essence.pojo.Type;
import com.essence.pojo.TypeExt;
import com.essence.service.TypeService;

/**  
 * 商品分类列表
 * @author xzz
 * @date 2018年8月20日下午8:00:52
 */
@Controller
@RequestMapping("type")
public class TypeController {
	
	@Autowired
	TypeService typeService;
	
	@RequestMapping("typeList")
	public @ResponseBody List<Type> typeList() {
		return typeService.queryChildType();
	}
	
	@RequestMapping("parent_typeList")
	public @ResponseBody List<Type> Parent_typeList() {
		return typeService.queryParentType();
	
	}
	
	@RequestMapping("parent_Childtype")
	public @ResponseBody List<TypeExt> parent_Childtype() {
		return typeService.selectParentAndChild();
	
	}
	@RequestMapping("sizeList")
	public @ResponseBody List<Size> SizeList() {
		return typeService.querySize();
	}
	
	
}
