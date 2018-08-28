package com.essence.service;

import java.util.List;

import com.essence.pojo.Size;
import com.essence.pojo.Type;
import com.essence.pojo.TypeExt;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月20日下午8:01:24
 */
public interface TypeService {
	List<Type> queryParentType();
	List<Type> queryChildType();
	List<Size> querySize();
	List<TypeExt> selectParentAndChild();
}
