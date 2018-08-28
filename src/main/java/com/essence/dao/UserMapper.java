package com.essence.dao;

import com.essence.pojo.User;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(String userid);
    int insert(User record);
    User selectByPrimaryKey(String userid);
    User selectByPhoneAndPwd(@Param("phone")String phone,@Param("pwd")String pwd);
    List<User> selectAll();
    int updateByPrimaryKey(User record);
    
    
}