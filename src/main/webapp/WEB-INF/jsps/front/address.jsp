<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>地址管理</title>
</head>
<body>
<%@ include file="menu.jsp"%>
    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(${pageContext.request.contextPath}/front_style/img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>收货地址管理</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Checkout Area Start ##### -->
    <div class="checkout_area">

        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6 offset-2">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading mb-30">
                            <h5>编辑收货地址 <a data-toggle="collapse" data-parent="#accordion"
                                           href="#collapseOne"><span style="font-size:12px">+</span></a></h5>

                            <div class="panel panel-default">
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form action="${pageContext.request.contextPath}/address/add" method="post"  onsubmit="return add_address(this)">
                                            <div class="row">
                                                <div class="col-12 mb-3">
                                                    <label for="contactName">收货人 <span>*</span></label>
                                                    <input type="text" class="form-control mb-3" id="contactName" value="" name="contactname">
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="contactPhone">联系电话 <span>*</span></label>
                                                    <input type="text" class="form-control mb-3" id="contactPhone" value="" name="contactphone">
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="province">省<span>*</span></label>
                                                    <select class="w-100" id="province" name="province">
                                                        <option value="江西省">江西省</option>
                                                        <option value="广东省">广东省</option>
                                                    </select>
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="city">市<span>*</span></label>
                                                    <select class="w-100" id="city" name="city">
                                                        <option value="南昌市">南昌市</option>
                                                        <option value="深圳市">深圳市</option>
                                                    </select>
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="street_address">具体地址 <span>*</span></label>
                                                    <input type="text" class="form-control mb-3" id="street_address" value="" name="detailaddr">
                                                </div>

                                                <div class="col-12">
                                                    <div >
                                                        <input type="checkbox" name="status" value="1">
                                                        <label >设置为默认地址</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="myBtn">
                                                <input class="btn btn-outline-info" type="submit" value="提交"><input type="button"  class="btn btn-outline-info" value="删除">
                                            </div>
                                             <input hidden name="userid" value="${user.userid }">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            
							<!--地址2-->
					<c:forEach var="address" items="${addresslist }">
						 <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href='#${address.addressid }'>
                                            <p>${address.province } ${address.city }${address.detailaddr }
                                            <c:if test="${address.status=='1' }"><span style="font-size:10px">(默认)</span></c:if>
                                            </p>
                                        </a>
                                    </h4>
                                </div>
                                <div id="${address.addressid }" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form action="${pageContext.request.contextPath}/address/update" method="post"  onsubmit="return update_address(this)">
                                            <div class="row">
                                               <div class="col-12 mb-3">
                                                    <label for="contactName">收货人 <span>*</span></label>
                                                    <input type="text" class="form-control mb-3" id="contactName" value="${address.contactname }" name="contactname">
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="contactPhone">联系电话 <span>*</span></label>
                                                    <input type="text" class="form-control mb-3" id="contactPhone" value="${address.contactphone }" name="contactphone">
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="province">省<span>*</span></label>
                                                    <select class="w-100" name="province">
                                                        <option value="江西省">江西省</option>
                                                        <option value="广东省">广东省</option>
                                                    </select>
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="city">市<span>*</span></label>
                                                    <select class="w-100" name="city">
                                                        <option value="南昌市">南昌市</option>
                                                          <option value="深圳市">深圳市</option>
                                                    </select>
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <label for="street_address">具体地址 <span>*</span></label>
                                                  <input type="text" class="form-control mb-3" id="street_address" value="${address.detailaddr }" name="detailaddr">
                                                </div>

                                                <div class="col-12">
                                                    <div >
                                                            <input type="checkbox" name="status" value="1">
                                                        <label >设置为默认地址</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="myBtn">
                                               <input class="btn btn-outline-info" type="submit" value="提交"><input type="button"  class="btn btn-outline-info"  onclick=delete_address('${address.addressid}') value="删除">
                                            </div>
                                            <input hidden name="userid" value="${user.userid }">
                                              <input hidden name="addressid" value="${address.addressid }">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            
					</c:forEach>
                           
                            
                    </div>
                </div>
                </div>
                </div>
                </div>
                </div>
                
<%@ include file="footer.jsp"%>
<script>

function add_address(form) {
         $.ajax({
             type : "post",
             url : "${pageContext.request.contextPath}/address/add",
             data : $(form).serialize(),
             success : function(data) {
            window.location.href='${pageContext.request.contextPath}/address/selectAll';
             },
             error:function(data){
            	 alert("fail");
             }
         });
         return false;
     }
     
function update_address(form) {
    $.ajax({
        type : "post",
        url : "${pageContext.request.contextPath}/address/update",
        data : $(form).serialize(),
        success : function(data) {
       window.location.href='${pageContext.request.contextPath}/address/selectAll';
        },
        error:function(data){
       	 alert("fail");
        }
    });
    return false;
}
     
     function delete_address(id){
         $.ajax({
             type : "post",
             url : "${pageContext.request.contextPath}/address/delete?addressid="+id,
             success : function(data) {
            window.location.href='${pageContext.request.contextPath}/address/selectAll';
             },
             error:function(data){
            	 alert("fail");
             }
         });
     }
</script>
</body>
</html>