package com.essence.service;

import java.util.List;

import com.essence.pojo.Evaluation;
import com.essence.pojo.EvaluationExt;
import com.essence.pojo.EvaluationExt1;

/**  
 * ��˵��   
 * @author xzz
 * @date 2018��8��25������11:50:39
 */
public interface EvaluationService {
	int add(Evaluation evaluation);
	int detele(String evaluationid,String userid);
	List<EvaluationExt1> selectAllByGoods(String goodsid);
    Evaluation selectByProductAndUser(String productid,String userid,String orderid);
    EvaluationExt countTag(String goodsid);
}
