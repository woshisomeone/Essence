package com.essence.dao;

import com.essence.pojo.Showpic;
import java.util.List;

public interface ShowpicMapper {
    int insert(Showpic record);
    List<Showpic> selectAll();
}