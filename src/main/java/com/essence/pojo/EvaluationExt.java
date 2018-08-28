package com.essence.pojo;

import java.util.List;

/**  
 * 类说明   
 * @author xzz
 * @date 2018年8月25日下午8:25:51
 */
public class EvaluationExt  {
	List<EvaluationExt1> evaluationlist;
	
	private Integer q1;
	private Integer q2;
	private Integer q3;
	private Integer s1;
	private Integer s2;
	private Integer s3;
	private Integer l1;
	private Integer l2;
	private Integer l3;
	
	
	public List<EvaluationExt1> getEvaluationlist() {
		return evaluationlist;
	}
	public void setEvaluationlist(List<EvaluationExt1> evaluationlist) {
		this.evaluationlist = evaluationlist;
	}
	public EvaluationExt(Integer q1, Integer q2, Integer q3, Integer s1, Integer s2, Integer s3, Integer l1, Integer l2,
			Integer l3) {
		super();
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.s1 = s1;
		this.s2 = s2;
		this.s3 = s3;
		this.l1 = l1;
		this.l2 = l2;
		this.l3 = l3;
	}
	public EvaluationExt() {
		super();
	}
	public Integer getQ1() {
		return q1;
	}
	public void setQ1(Integer q1) {
		this.q1 = q1;
	}
	public Integer getQ2() {
		return q2;
	}
	public void setQ2(Integer q2) {
		this.q2 = q2;
	}
	public Integer getQ3() {
		return q3;
	}
	public void setQ3(Integer q3) {
		this.q3 = q3;
	}
	public Integer getS1() {
		return s1;
	}
	public void setS1(Integer s1) {
		this.s1 = s1;
	}
	public Integer getS2() {
		return s2;
	}
	public void setS2(Integer s2) {
		this.s2 = s2;
	}
	public Integer getS3() {
		return s3;
	}
	public void setS3(Integer s3) {
		this.s3 = s3;
	}
	public Integer getL1() {
		return l1;
	}
	public void setL1(Integer l1) {
		this.l1 = l1;
	}
	public Integer getL2() {
		return l2;
	}
	public void setL2(Integer l2) {
		this.l2 = l2;
	}
	public Integer getL3() {
		return l3;
	}
	public void setL3(Integer l3) {
		this.l3 = l3;
	}
	
}
