package com.essence.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essence.pojo.User;
import com.essence.service.UserService;

/**  
 * 用户的登陆注册
 * @author xzz
 * @date 2018年8月16日上午11:01:18
 */
@Controller
public class UserController {
	@Autowired
	UserService uservice;
	
	@RequestMapping("index")
		public String index() {
			return "/front/index";
	}
	
	@RequestMapping("doLogin")
	public @ResponseBody String login(String phone,String pwd,HttpSession session) {
		User user=uservice.login(phone, pwd);
		if(user!=null) {
			session.setAttribute("user", user);
			return "yes";
		}
		return "fail";
	}
	
	@RequestMapping(value="doRegister",produces = "text/html;charset=utf-8")
	public @ResponseBody String register(@Valid User user,BindingResult br) {
		String msg="";
		if(br.hasErrors()) {
			FieldError nameError=br.getFieldError("username");
			FieldError pwdError=br.getFieldError("pwd");
			FieldError phoneError=br.getFieldError("phone");
			
			if(nameError!=null) 
				msg+=nameError.getDefaultMessage();
			
			if(pwdError!=null) 
				msg+=pwdError.getDefaultMessage();
			
			if(phoneError!=null) 
				msg+=phoneError.getDefaultMessage();
				
			System.out.println(msg);
			return msg;
		}else {
		user.setUserid(UUID.randomUUID().toString());
		user.setCreatetime(new Date());
		uservice.register(user);
		return "yes";
		}
	}
}
