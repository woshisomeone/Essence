package com.essence.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essence.dao.EvaluationMapper;
import com.essence.pojo.Evaluation;
import com.essence.pojo.EvaluationExt;
import com.essence.pojo.EvaluationExt1;
import com.essence.service.EvaluationService;

/**  
 * 评论的服务实现  
 * @author xzz
 * @date 2018年8月25日上午11:50:57
 */
@Service
public class EvaluationServiceImpl implements EvaluationService{

	@Autowired
	EvaluationMapper evaluationMapper;
	
	@Override
	public int add(Evaluation evaluation) {
		return evaluationMapper.insert(evaluation);
	}

	@Override
	public int detele(String evaluationid, String userid) {
		return evaluationMapper.deleteByPrimaryKeyAndUser(evaluationid, userid);
	}

	@Override
	public List<EvaluationExt1> selectAllByGoods(String goodsid) {
		return evaluationMapper.selectAllByGoods(goodsid);
	}

	@Override
	public Evaluation selectByProductAndUser(String productid, String userid,String orderid) {
		return evaluationMapper.selectByProductAndUser(productid, userid,orderid);
	}

	@Override
	public EvaluationExt countTag(String goodsid) {
		return evaluationMapper.countTag(goodsid);
	}
	
}
