package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.SizeMapper;
import com.essence.dao.TypeMapper;
import com.essence.pojo.Size;
import com.essence.pojo.Type;
import com.essence.pojo.TypeExt;
import com.essence.service.TypeService;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月20日下午8:01:50
 */
@Service
public class TypeServiceImpl implements TypeService {

	@Autowired
	TypeMapper typeMapper;
	@Autowired
	SizeMapper sizeMapper;
	
	@Override
	public List<Size> querySize() {
		return sizeMapper.selectAll();
	}

	@Override
	public List<Type> queryParentType() {
		return typeMapper.selectParentType();
	}

	@Override
	public List<Type> queryChildType() {
		return typeMapper.selectChildType();
	}

	@Override
	public List<TypeExt> selectParentAndChild() {
		return typeMapper.selectParentAndChild();
	}

}
