package com.essence.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.UserMapper;
import com.essence.pojo.User;
import com.essence.service.UserService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月16日上午11:02:19
 */
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public int register(User user) {
		return userMapper.insert(user);
	}

	@Override
	public User login(String phone, String pwd) {
		return userMapper.selectByPhoneAndPwd(phone,pwd);
	}

}
