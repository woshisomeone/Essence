package com.essence.service;

import com.essence.pojo.Admin;
import com.essence.pojo.User;

/**  
 * �û�
 * @author xzz
 * @date 2018��8��16������11:02:41
 */
public interface AdminService {
	int register(Admin admin);
	Admin login(String adminid,String adminpwd);
}
