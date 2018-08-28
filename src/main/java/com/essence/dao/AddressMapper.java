package com.essence.dao;

import com.essence.pojo.Address;
import java.util.List;

public interface AddressMapper {
    int deleteByPrimaryKey(String addressid);
    int insert(Address record);
    Address selectByPrimaryKey(String addressid);
    Address selectDefault(String userid);
    List<Address> selectAll();
    int updateByPrimaryKey(Address record);
    int updateStatus(String userid);
    Integer selectCount(String userid);
}