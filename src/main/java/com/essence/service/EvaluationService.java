package com.essence.service;

import java.util.List;

import com.essence.pojo.Evaluation;
import com.essence.pojo.EvaluationExt;
import com.essence.pojo.EvaluationExt1;

/**  
 * 类说明   
 * @author xzz
 * @date 2018年8月25日上午11:50:39
 */
public interface EvaluationService {
	int add(Evaluation evaluation);
	int detele(String evaluationid,String userid);
	List<EvaluationExt1> selectAllByGoods(String goodsid);
    Evaluation selectByProductAndUser(String productid,String userid,String orderid);
    EvaluationExt countTag(String goodsid);
}
