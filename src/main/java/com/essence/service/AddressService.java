package com.essence.service;

import java.util.List;

import com.essence.pojo.Address;

/**  
 * 类说明
 * @author xzz
 * @date 2018年8月23日下午7:42:26
 */
public interface AddressService {
	int addAddress(Address address);
	int deleteAddress(String addressid);
	int updateAddress(Address address);
	Address selectAddress(String addressid);
	List<Address> selectAll();
    int updateStatus(String userid);
    Integer selectCount(String userid);
    Address selectDefault(String userid);
}
