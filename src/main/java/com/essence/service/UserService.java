package com.essence.service;

import com.essence.pojo.User;

/**  
 * �û�
 * @author xzz
 * @date 2018��8��16������11:02:41
 */
public interface UserService {
	int register(User user);
	User login(String phone,String pwd);
}
