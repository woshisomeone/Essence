package com.essence.service;

import com.essence.pojo.User;

/**  
 * 用户
 * @author xzz
 * @date 2018年8月16日上午11:02:41
 */
public interface UserService {
	int register(User user);
	User login(String phone,String pwd);
}
