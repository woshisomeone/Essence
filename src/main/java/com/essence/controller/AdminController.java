package com.essence.controller;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essence.pojo.Admin;
import com.essence.service.AdminService;
import com.essence.utils.CreateId;

/**  
 * 管理员的登陆注册
 * @author xzz
 * @date 2018年8月16日上午11:01:18
 */
@Controller
@RequestMapping("behind")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping("index")
		public String index() {
			return "/behind/index";
	}
	
	@RequestMapping("loginAndReg")
	public String loginAndReg() {
		return "/behind/loginAndRegister";
}

	@RequestMapping("doLogin")
	public @ResponseBody String login(String adminid,String adminpwd,HttpSession session) {
		Admin admin=adminService.login(adminid, adminpwd);
		if(admin!=null) {
			session.setAttribute("username", admin.getAdminname());
			return "yes";
		}
		return "fail";
	}
	
	@RequestMapping(value="doRegister",produces = "text/html;charset=utf-8")
	public @ResponseBody String register(@Valid Admin admin,BindingResult br) {
		String msg="";
		if(br.hasErrors()) {
			FieldError nameError=br.getFieldError("adminname");
			FieldError pwdError=br.getFieldError("adminpwd");
			if(nameError!=null) 
				msg+=nameError.getDefaultMessage();
			if(pwdError!=null) 
				msg+=pwdError.getDefaultMessage();
			System.out.println(msg);
			return msg;
		}else {
		String adminid=CreateId.createId();
		admin.setAdminid(adminid);
		adminService.register(admin);
		msg="管理员："+adminid;
		return msg;
		}
	}
}
