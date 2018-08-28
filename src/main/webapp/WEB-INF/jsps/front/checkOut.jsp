<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
</head>
<style>
	.order-details-form  input{
	border:none;
	background: transparent;
	display:inline;
	margin:0;
	padding:0;
	
	}

</style>
<body>
<%@ include file="menu.jsp"%>
		  <!-- ##### Checkout Area Start ##### -->
	<div class="col-12 col-md-7 offset-3" style="margin-bottom:100px">
		<div class="order-details-confirmation">
			<div class="cart-page-heading">
				<h5>订单</h5>
			</div>
			<form action="${pageContext.request.contextPath}/order/add" method="post" >
				<ul class="order-details-form mb-4">
				  <li><span  id="contact"></span> <span id="address"></span></li>
			
					<li><span>商品×件数</span> <span><input value="单价" style="font-weight: 600;"></span></li>
					
					<c:forEach var="cart" items="${cartlist}">
					<li><span><input name="goodsname" value="${cart.goodsname}">(尺寸:<input value="${cart.size}" name="size" style="width:20px"> 颜色:<input value="${cart.color}" name="color"  style="width:50px">) </span><span>×<input name="productnum" value="${cart.productnum } "  ></span><span>￥<input name="price" value="${cart.price }"> </span></li>
						<input type="hidden" value="${cart.shoppingcarid }" name="shoppingcarid">
					</c:forEach>
					<li><span><b>总金额</b></span> <span style="font-size:13px"><b>￥<input name="totalmoney" value="${total }" ></b></span></li>
				 
				</ul>
				  <input class="btn btn-info col-3" value="提交订单" type="submit" >
			  </form>
		</div>
	</div>
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	$(function(){
		 $.ajax({
             type : "post",
             url : "${pageContext.request.contextPath}/address/defaultAddr?userid="+$("#userid").val(),
             success : function(address) {
            	 var name=address.contactname+"&nbsp;"+address.contactphone;
            		var p=address.province+"&nbsp;"+address.city+"&nbsp;"+address.detailaddr+"&nbsp;&nbsp;<a href=${pageContext.request.contextPath}/address/selectAll>编辑</a>";
            		$("#contact").append(name);
            		$("#address").append(p);
             },
             error:function(data){
             }
         });
	});
	

</script>
</body>
</html>