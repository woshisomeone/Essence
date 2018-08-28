package com.essence.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.UserMapper;
import com.essence.pojo.User;
import com.essence.service.UserService;

/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��16������11:02:19
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
