package com.essence.dao;

import com.essence.pojo.Evaluation;
import com.essence.pojo.EvaluationExt;
import com.essence.pojo.EvaluationExt1;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface EvaluationMapper {
    int deleteByPrimaryKey(String evaluationid);
    int deleteByPrimaryKeyAndUser(@Param("evaluationid")String evaluationid,@Param("userid")String userid);
    int insert(Evaluation record);
    Evaluation selectByPrimaryKey(String evaluationid);
    List<EvaluationExt1> selectAllByGoods(String goodsid);
    Evaluation selectByProductAndUser(@Param("productid")String productid,@Param("userid")String userid,@Param("orderid")String orderid);
    int updateByPrimaryKey(Evaluation record);
    EvaluationExt countTag(String goodsid);
    
}