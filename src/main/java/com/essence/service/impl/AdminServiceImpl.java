package com.essence.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.AdminMapper;
import com.essence.dao.UserMapper;
import com.essence.pojo.Admin;
import com.essence.pojo.User;
import com.essence.service.AdminService;
import com.essence.service.UserService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月16日上午11:02:19
 */
@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public int register(Admin admin) {
		return adminMapper.insert(admin);
	}

	@Override
	public Admin login(String adminid,String adminpwd) {
		return adminMapper.selectByIdAndPwd(adminid, adminpwd);
	}

}
