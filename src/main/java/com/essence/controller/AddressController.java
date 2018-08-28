package com.essence.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.essence.pojo.Address;
import com.essence.service.AddressService;
import com.essence.utils.CreateId;

/**  
 * 收货地址
 * @author xzz
 * @date 2018年8月23日下午7:41:24
 */
@Controller
@RequestMapping("address")
public class AddressController {
	
	@Autowired
	AddressService addressService;
	
	@RequestMapping("address_page")
	public String address_page() {
		return "/front/address";
	}
	
	@RequestMapping("add")
	public @ResponseBody String addAddress(Address address) {
		address.setAddressid(CreateId.createId());
		address.setCreatetime(new Date());
		if(addressService.selectCount(address.getUserid())<5) {
			if(address.getStatus().equals("1")) 
				addressService.updateStatus(address.getUserid());
			addressService.addAddress(address);
			return "yes";
		}
		return "false";
		
	}
	
	@RequestMapping("delete")
	public @ResponseBody  int deleteAddress(String addressid) {
		return addressService.deleteAddress(addressid);
	}
	
	@RequestMapping("update")
	public @ResponseBody int updateAddress(Address address) {
		if(address.getStatus().equals("1")) 
			addressService.updateStatus(address.getUserid());
		return addressService.updateAddress(address);
	}
	@RequestMapping("select")
	public Address selectAddress(String addressid) {
		return addressService.selectAddress(addressid);
	}
	@RequestMapping("selectAll")
	public  ModelAndView selectAll(ModelAndView mv){
		mv.addObject("addresslist",addressService.selectAll());
		mv.setViewName("/front/address");
		return mv;
	}
	
	@RequestMapping("defaultAddr")
	public @ResponseBody Address  defaultAddr(String userid) {
		return addressService.selectDefault(userid);
	}
}
