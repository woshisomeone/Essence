package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.AddressMapper;
import com.essence.pojo.Address;
import com.essence.service.AddressService;

/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��23������7:42:46
 */
@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	AddressMapper addressMapper;
	
	@Override
	public int addAddress(Address address) {
		return addressMapper.insert(address);
	}

	@Override
	public int deleteAddress(String addressid) {
		return addressMapper.deleteByPrimaryKey(addressid);
	}

	@Override
	public int updateAddress(Address address) {
		return addressMapper.updateByPrimaryKey(address);
	}

	@Override
	public Address selectAddress(String addressid) {
		return addressMapper.selectByPrimaryKey(addressid);
	}

	@Override
	public List<Address> selectAll() {
		return addressMapper.selectAll();
	}

	@Override
	public int updateStatus(String userid) {
		return addressMapper.updateStatus(userid);
	}

	@Override
	public Integer selectCount(String userid) {
		return addressMapper.selectCount(userid);
	}

	@Override
	public Address selectDefault(String userid) {
		return addressMapper.selectDefault(userid);
	}

}
