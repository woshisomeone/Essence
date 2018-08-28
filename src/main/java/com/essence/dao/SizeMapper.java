package com.essence.dao;

import com.essence.pojo.Size;
import java.util.List;

public interface SizeMapper {
    int deleteByPrimaryKey(String sizeid);
    int insert(Size record);
    Size selectByPrimaryKey(String sizeid);
    List<Size> selectAll();
    int updateByPrimaryKey(Size record);
}