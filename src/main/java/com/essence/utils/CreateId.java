package com.essence.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��17������2:26:58
 */
public class CreateId {
	public static String createId() {
		 DateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");  
		 String  id = sdf.format(new Date())+new Random().nextInt(100);
		return id;  
	}
	 
}
