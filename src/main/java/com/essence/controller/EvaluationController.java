package com.essence.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essence.pojo.Evaluation;
import com.essence.pojo.EvaluationExt1;
import com.essence.service.EvaluationService;
import com.essence.utils.CreateId;

/**  
 * 评论  
 * @author xzz
 * @date 2018年8月25日上午11:49:36
 */
@Controller
@RequestMapping("evaluation")
public class EvaluationController {
	 @Autowired
	EvaluationService evaluationService;
	 
	 @RequestMapping("add")
	 public @ResponseBody int add(Evaluation evaluation) {
		 evaluation.setEvaluationid(CreateId.createId());
		 evaluation.setStatus(1);
		return evaluationService.add(evaluation);
	 }
	 
	 public int delete(String userid,String evaluationid) {
		 return evaluationService.detele(evaluationid, userid);
	 }
	 
	 public List<EvaluationExt1> selectByGoods(String goodsid){
		 return evaluationService.selectAllByGoods(goodsid);
	 }
}
