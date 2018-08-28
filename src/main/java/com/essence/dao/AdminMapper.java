package com.essence.dao;

import com.essence.pojo.Admin;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    int deleteByPrimaryKey(String adminid);
    int insert(Admin record);
    Admin selectByPrimaryKey(String adminid);
    Admin selectByIdAndPwd(@Param("adminid")String adminid,@Param("adminpwd")String adminpwd);
    List<Admin> selectAll();
    int updateByPrimaryKey(Admin record);
}