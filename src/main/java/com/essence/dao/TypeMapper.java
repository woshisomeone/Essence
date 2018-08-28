package com.essence.dao;

import com.essence.pojo.Type;
import com.essence.pojo.TypeExt;

import java.util.List;

public interface TypeMapper {
    int deleteByPrimaryKey(String typeid);
    int insert(Type record);
    Type selectByPrimaryKey(String typeid);
    List<Type> selectAll();
    List<Type> selectParentType();
    List<Type> selectChildType();
    int updateByPrimaryKey(Type record);
    List<TypeExt> selectParentAndChild();
}