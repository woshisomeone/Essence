<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="menu.jsp"%>
<link href="${pageContext.request.contextPath}/behind_style/css/style.min.css" rel="stylesheet" />
<title>商品详情</title>
</head>
<style>
.notsee{
  display: none;
}
	.show{
	  display: block;
	}
	
	.owl-item{
	height:620px;
	}
</style>
<body>

 <!-- ##### Single Product Details Area Start ##### -->
    <section class="single_product_details_area d-flex align-items-center">

        <!-- Single Product Thumb -->
        <div class="single_product_thumb clearfix" >
            <div class="product_thumbnail_slides owl-carousel" >
              <c:forEach var="pics" items="${goodsExt.goodspics}">
                <img src="${pageContext.request.contextPath}/pic/${pics.picname}" alt="" height="387px" >
            </c:forEach>
              <img src="${pageContext.request.contextPath}/pic/${goodsExt.goods.goodspic}" alt="avatar" />
            </div>
        </div>

        <!-- Single Product Description -->
        <div class="single_product_desc clearfix">
            <span>ESSENCE_${goodsExt.goods.goodsdescrib }</span>
            <a href="cart.html">
                <h2>${goodsExt.goods.goodsname }</h2>
            </a>
            <p id="price" class="product-price"> ${goodsExt.goods.price}</p>
            <p class="product-desc">该商品编号为<span id="goodsid" style="display:inline">${goodsExt.goods.goodsid}</span>，库存<span id="productnum" style="display:inline">${ goodsExt.goods.totalnum}</span>件</p>
			<input id="productid" hidden="true"  >
            <!-- Form -->
            <form class="cart-form clearfix" method="post">
             <div >
             <span style="display:inline">颜色：</span>
					  <c:forEach var="color" items="${goodsExt.colorlist }">
					   <div class="col-1 tag">
						       <a class=btn>
                                <input id="colorbox"type="button"  class="btn" style="background:${color};display:inline;width:50px;height:20px" >
                               <p id="color" class="notification green notsee"  style="line-height: 1.2px;padding:10px" >${color }</p>
                           </a>
                    </div>
                    </c:forEach>
                    <p id="choseColor" style="display:none;float:right;">请选择颜色</p>
				</div>
                <!-- Select Box -->
                <div class="d-flex  mb-30"  style="margin-top:20px"> 
                    <select name="select" id="productSize" class="mr-3"  onchange="change()">
                    <c:forEach var="size" items="${goodsExt.sizelist }">
                        <option value="${size }">Size: ${size }</option>
                    </c:forEach>
                    </select>
                    <input type="number" value="1"  class="form-control col-md-3" id="count" min="0"  max="" style="display: inline;margin-left:20px">
               	   
                </div>
				
                <!-- Cart & Favourite Box -->
                <div class="cart-fav-box d-flex align-items-center">
                    <!-- Cart -->
                    <button type="button" name="addtocart" id="addtocart"value="5" class="btn essence-btn">Add to cart</button>
                </a>
                    <!-- Favourite -->
                    <div class="product-favourite ml-4">
                        <a href="#" class="favme fa fa-heart"></a>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- ##### Single Product Details Area End ##### -->

    <!--评论-->
    <div class="row-fluid">

        <div class="span12 discussions">

            <ul>

                <li>
                    <div class="author">
                       <img src="${pageContext.request.contextPath}/pic/${goodsExt.goods.goodspic}" alt="avatar" />
                    </div>

                    <div class="name">${goodsExt.goods.goodsname }</div>
                    <div class="date">上市时间：${goodsExt.goods.createtime }</div>
                   <div class="message">
                        <div class="col-1 tag">
                            <a class=btn>
                                <p style="margin-bottom: 0">满意</p>
                                <span class="notification green" style="line-height: 1px; padding:10px">+ ${ext.q3}</span>
                            </a>
                        </div>
                           <div class="col-1 tag">
                            <a class=btn>
                                <p style="margin-bottom: 0">一般</p>
                                <span class="notification green" style="line-height: 1px; padding:10px">+ ${ext.q2 }</span>
                            </a>
                        </div>
                          <div class="col-1 tag">
                            <a class=btn>
                                <p style="margin-bottom: 0">待改善</p>
                                <span class="notification green" style="line-height: 1px; padding:10px">+ ${ext.q1 }</span>
                            </a>
                        </div>
                       <div class="col-1 tag">
                           <a class=btn>
                               <p style="margin-bottom: 0">合适</p>
                               <span class="notification green" style="line-height: 1px;padding:10px">+ ${ext.s3 }</span>
                           </a>
                       </div>
                       <div class="col-1 tag">
                           <a class=btn>
                               <p style="margin-bottom: 0">偏大</p>
                               <span class="notification green" style="line-height: 1px;padding:10px">+ ${ext.s2 }</span>
                           </a>
                       </div>
                       <div class="col-1 tag">
                           <a class=btn>
                               <p style="margin-bottom: 0">偏小</p>
                               <span class="notification green" style="line-height: 1px;padding:10px">+ ${ext.s1 }</span>
                           </a>
                       </div>
                       <div class="col-1 tag">
                           <a class=btn>
                               <p style="margin-bottom: 0">很美</p>
                               <span class="notification green" style="line-height: 1px;padding:10px">+ ${ext.l1} </span>
                           </a>
                       </div>
                        <div class="col-1 tag">
                           <a class=btn>
                               <p style="margin-bottom: 0">有点小失望</p>
                               <span class="notification green" style="line-height: 1px;padding:10px">+ ${ext.l2}</span>
                           </a>
                       </div>
                       <hr>
                        <p>服装细节介绍：材质舒服，设计很棒。</p>
                    </div>
                    <!--评论列表-->
                    <ul>

					<c:forEach var="evaluation" items="${ext.evaluationlist }">
						<li>
                            <div class="author">
                                <img src="${pageContext.request.contextPath}/front_style/img/avatar3.jpg" alt="avatar" />
                            </div>
                            <div class="name">${evaluation.username }</div>
                            <div class="date">Today, 1:08 PM</div>
                            <div class="delete"><i class="fa fa-close" aria-hidden="true"></i></div>

                            <div class="message">
                               	${evaluation.message }
                            </div>
                        </li>
					</c:forEach>
                        
                        
                    </ul>

                </li>
            </ul>
        </div>
    </div>

<%@ include file="footer.jsp"%>

<script type="text/javascript">
 $("#colorbox").click(
		function(){ $("#color").toggleClass("show");}
);
 
 function getproduct(){
	 $.ajax({
         type:"post",
         url:"${pageContext.request.contextPath}/getProduct",
         data:"goodsid="+$("#goodsid").text()+"&size="+$("#productSize") .val()+"&color="+$("#color").text(),
         success:function(product){
        	 $("#productnum").text(product.productnum);
        	 $("#count").attr("max",product.productnum);
        	 $("#productid").val(product.productid);
         }
     });
 }
function change(){
	 if( $("#color").css("display")!="none"){
		 getproduct();
	 }
 }
 
 var cart="";
 function getcart(){
	 cart=JSON.stringify({
			"productid":$("#productid").val(),
			"userid":$("#userid").val(),
		     "productnum":$("#count").val(),
		     "size":$("#productSize").val(),
		 	"color":$("#color").text(),
		 	 "price":$("#price").text()
		 });
 }
 	
 $("#addtocart").click(
	 function(){
		 if($("#userid").val()==""){
				    $('#myModal').modal("show");
		 }else{
			 if(  $("#color").css("display")!="none"){
				 getproduct();
				 getcart();
				 $.ajax({
		             type:"post",
		             url:"${pageContext.request.contextPath}/shopingcart/addProduct",
		             contentType : "application/json",
		             data:cart,
		             success:function(num){
		            	var old=$("#productNum_cart").text();
		            	var newnum=parseInt(old)+num;
		            	$("#productNum_cart").text(newnum);
		            	$("#productNum_cart1").text(newnum);
		             }
		         }); 
			 }else{
				 $("#choseColor").show().delay(3000).hide(200);
			 }
		 }
	 }		 
 )
</script>
</body>
</html>