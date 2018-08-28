package com.essence.dao;

import com.essence.pojo.Collection;
import java.util.List;

public interface CollectionMapper {
    int deleteByPrimaryKey(String collectionid);
    int insert(Collection record);
    Collection selectByPrimaryKey(String collectionid);
    List<Collection> selectAll();
    int updateByPrimaryKey(Collection record);
}