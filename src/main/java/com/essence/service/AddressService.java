package com.essence.service;

import java.util.List;

import com.essence.pojo.Address;

/**  
 * ��˵��
 * @author xzz
 * @date 2018��8��23������7:42:26
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
