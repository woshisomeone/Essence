package com.essence.service;

import com.essence.pojo.Admin;
import com.essence.pojo.User;

/**  
 * 用户
 * @author xzz
 * @date 2018年8月16日上午11:02:41
 */
public interface AdminService {
	int register(Admin admin);
	Admin login(String adminid,String adminpwd);
}
