<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
</head>
<body>
<%@ include file="menu.jsp"%>
 <!-- ##### Blog Wrapper Area Start ##### -->
    <div class="single-blog-wrapper">

        <!-- Single Blog Post Thumb -->
        <div class="single-blog-post-thumb">
            <img src="${pageContext.request.contextPath}/front_style/img/bg-img/bg-8.jpg" alt="">
        </div>

        <div class="container col-7">
            <!--订单信息选项卡-->
            <ul id="myTab" class="nav nav-tabs">
                <li class="active"><a href="#finish" data-toggle="tab">
                    已完成订单</a>
                </li>
                <b>&nbsp;|&nbsp;</b>
                <li><a href="#notFinish" data-toggle="tab" onclick="unfinish_order()">未完成订单</a></li>
            </ul>
            <!--选项卡内容-->
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane active  in " id="finish">
                    <ul class="list-group">
                  <c:forEach var="order" items="${orders }">
                        <li class="list-group-item order-detail">
                            <!--订单1-->
                            <div><span>订单编号：${order.orderid }</span><span>交易时间：<fmt:formatDate value='${order.createtime}' type='date' pattern='yyyy-MM-dd'/> </span><span>交易金额：${order.totalmoney }元</span><span>交易状态：已完成</span></div>
                            <hr>
                            <!--订单明细1-->
                             <c:forEach var="item" items="${order.itemlist }">
                            <div class="items">
                                <div class="float-left"><img src="${pageContext.request.contextPath}/pic/${item.goodspic}" class="img-thumbnail"></div>
                                <div class="float-left order-detail-right" style="margin-left: 30px">
                                    <h5><a href="${pageContext.request.contextPath}/product_detail.html?goodsid=${item.goodsid}">${item.productname }</a></h5>
                                    <h6>￥${item.price }</h6>
                                    <p><span>颜色：${item.color }</span><span>尺寸：${item.size }</span><span>数量：${item.productnum }件</span></p>
                                </div>
                                <c:if test="${item.evaluation_status==0 }">
                                 <p class="btn float-right" data-toggle="modal" data-target="#evaluation"  onclick='getOrderid("${order.orderid }","${item.productid }",this)'>
                                 	待评价
                                 </p>
                                </c:if>          
                                 <c:if test="${item.evaluation_status==1}" >
                                 	<p class="btn float-right" >已评价</p>
                                </c:if>      
                                <div class="clearfix"></div>
                            </div>
                            </c:forEach>
                        </li>
                  </c:forEach>
                </ul>
                    
                    <div class="modal-footer">
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li class="disabled"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                </div>
            </div>
                <!--未完成选项卡内容-->
                <div class="tab-pane fade" id="notFinish">
                
                   <ul class="list-group" id="notfinish_ul">
                  
                </ul>
                    <!--分页-->
                    <div class="modal-footer">
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li class="disabled"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
        </div>

    </div>
</div>  <!--模态框-->
    
    <div class="modal fade" id="evaluation" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 class="modal-title" id="myModalLabel">
                        评价
                    </h6>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                </div>
                 <form method="post" action="" onsubmit="return evaluation(this)">
                    <div class="modal-body">
                   <p>质量:<span> <input type="radio" value="满意" name="qulity">满意</span> <span><input type="radio" value="一般" name="qulity">一般</span><span><input type="radio" value="待改善" name="qulity">待改善</span></p>
                   <p>尺寸: <span><input type="radio" value="合适" name="suit">合适 </span><input type="radio" value="偏大" name="suit">偏大<span></span><span><input type="radio" value="偏小" name="suit">偏小</span></p>
                   <p>效果:<span><input type="radio" value="很美" name="look">很美</span><span> <input type="radio" value="挺满意" name="look">挺满意</span><span><input type="radio" value="有点小失望" name="look">有点小失望</span> </p>
                   <p><input class="form-control" placeholder="评论" name="message"></p>
                </div>
                <div class="modal-footer">
                      <input type="submit" class="btn btn-primary "  value="提交" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                </div>
               </form>
            </div>
        </div>
    </div>
  
    <!-- ##### Blog Wrapper Area End ##### -->
<%@ include file="footer.jsp"%>
<script type="text/javascript">


  function unfinish_order(){
	  $("#notfinish_ul").html(""); 
	  $.ajax({
	     type:"post",
	     url:"${pageContext.request.contextPath}/order/selectNotFinish",
	     data:"userid="+$("#userid").val(),
	     success:function(orders){
	   	  var li="";
	   	 $.each(orders,function(index,o){
	        	li+="  <li class=\"list-group-item order-detail\">\r\n" + 
	    		" <!--订单1-->\r\n" + 
	    		"<div><span>订单编号："+o.orderid+" </span><span>交易时间："+o.createtime+"</span><span>交易金额："+o.totalmoney +"元</span><span>交易状态：未完成</span></div>\r\n" + 
	    		"  <hr>\r\n" + 
	    		"  <!--订单明细1-->\r\n" ;
	    		$.each(o.itemlist,function(index,item){
	    		li+=" <div class=\"items\">\r\n" + 
	    		"<div class=\"float-left\"><img src=\"${pageContext.request.contextPath}/pic/"+item.goodspic+"\" class=\"img-thumbnail\"></div>\r\n" + 
	    		" <div class=\"float-left order-detail-right\" style=\"margin-left: 30px\">\r\n" + 
	    		"    <h5>"+item.productname +"</h5>\r\n" + 
	    		"   <h6>￥"+item.price +"</h6>\r\n" + 
	    		"  <p><span>颜色："+item.color+"</span><span>尺寸："+item.size +"</span><span>数量："+item.productnum+"件</span></p>\r\n" + 
	    		"  </div></div>\r\n" + 
	    		" <div class=\"clearfix\">\r\n" + 
	    		"  </div>\r\n";
	    		});
	    		li+=" </li>\r\n" ;
	    	 });
	    	 $("#notfinish_ul").append(li); 
	      }
	 });
} 
  
  var orderid;
  var productid;
  var msg_status;
  function getOrderid(oid,pid,p){
	  orderid=oid;
	  productid=pid;
	  msg_status=$(p);
  }
  function evaluation(form) {
     $.ajax({
          type : "post",
          url : "${pageContext.request.contextPath}/evaluation/add?orderid="+orderid+"&productid="+productid+"&userid="+$("#userid").val(),
          data : $(form).serialize(),
          success : function(data) {
        	  msg_status.text("已评价");
        	  $("#evaluation").modal('hide')
          }
      });
      return false; 
  }

</script>
</body>
</html>