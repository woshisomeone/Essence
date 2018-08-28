package com.essence.dao;

import com.essence.pojo.Goodspic;
import java.util.List;

public interface GoodspicMapper {
    int deleteByPrimaryKey(String picid);
    int insert(Goodspic record);
    List<Goodspic> selectByGoodsid(String goodsid);
    List<Goodspic> selectAll();
    int updateByPrimaryKey(Goodspic record);
}