<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="icon" href="${pageContext.request.contextPath}/front_style/img/core-img/favicon.ico">
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front_style/css/core-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/front_style/scss/style.scss">
   <script src="${pageContext.request.contextPath}/front_style/js/jquery/jquery-3.2.1.js"></script> 
<title>Insert title here</title>
</head>
<style>
.header_area .classynav ul li .megamenu li a:hover{
	cursor:default;
}
</style>
<body>
	 
    <!-- ##### Header Area Start ##### -->
    <header class="header_area">
        <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
            <!-- Classy Menu -->
            <nav class="classy-navbar" id="essenceNav">
                <!-- Logo -->
                <a class="nav-brand" href="index.html"><img src="${pageContext.request.contextPath}/front_style/img/core-img/logo.png" alt=""></a>
                <!-- Navbar Toggler -->
                <div class="classy-navbar-toggler">
                    <span class="navbarToggler"><span></span><span></span><span></span></span>
                </div>
                <!-- Menu -->
                <div class="classy-menu">
                    <!-- close btn -->
                    <div class="classycloseIcon">
                        <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                    </div>
                    <!-- Nav Start -->
                    <div class="classynav">
                        <ul>
                            <li><a href="#">Shop</a>
                                <div class="megamenu">
                                    <ul class="single-mega cn-col-4 ptype"  >
                                       
                                     		
                                    </ul>
                                    <ul class="single-mega cn-col-4">
                                        <li class="title">Men's Collection</li>
                                        <li><a href="${pageContext.request.contextPath}/shop">T-Shirts</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Polo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Shirts</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Jackets</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Trench</a></li>
                                    </ul>
                                    <ul class="single-mega cn-col-4">
                                        <li class="title">Kid's Collection</li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Dresses</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Shirts</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">T-shirts</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Jackets</a></li>
                                        <li><a href="${pageContext.request.contextPath}/shop">Trench</a></li>
                                    </ul>
                                    <div class="single-mega cn-col-4">
                                        <img src="${pageContext.request.contextPath}/front_style/img/bg-img/bg-6.jpg" alt="">
                                    </div>
                                </div>
                            </li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shop">Shop</a></li>
                                    <li><a href="single-product-details.html">Product Details</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="single-blog.html">Single Blog</a></li>
                                    <li><a href="regular-page.html">Regular Page</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                    <!-- Nav End -->
                </div>
            </nav>

            <!-- Header Meta Data -->
            <div class="header-meta d-flex clearfix justify-content-end">
                <!-- Search Area -->
                <div class="search-area">
                    <form action="#" method="post">
                        <input type="search" name="search" id="headerSearch" placeholder="Type for search">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
                <!-- Favourite Area -->
                <div class="favourite-area">
                    <p class="btn" data-toggle="modal" data-target="#favourite" style="background: transparent;">
                        <a href="#"><img src="${pageContext.request.contextPath}/front_style/img/core-img/heart.svg" alt=""></a>
                    </p>

                </div>
                <!-- User Login Info -->

                <div class="user-login-info">
                 <p class="popover-options">
                
                        <a href="#" type="button"  title="essence"
                           data-container="body"data-placement="bottom" data-toggle="popover" data-content="
                              <p  data-toggle=modal data-target=#myModal style='cursor:pointer'> 登陆/注册</p>
                              <a href='' style='color:#787878'>个人信息</a>
                              <a href='${pageContext.request.contextPath}/order/selectFinish?userid=${user.userid }' style='color:#787878'>订单信息</a>
                              ">
                           <img src="${pageContext.request.contextPath}/front_style/img/core-img/user.svg" alt=""><span id="username" style="margin:0;padding:0;display:inline;position: relative;color:black;font-size:12px;font-weight: 70;">${user.username}</span>
                        </a>
                           <input hidden="true" id="userid" value="${user.userid }">
                    </p>
                </div>

                <!-- Cart Area -->
                <div class="cart-area">
                    <a href="#" id="essenceCartBtn" onclick="showProduct_cart()"><img src="${pageContext.request.contextPath}/front_style/img/core-img/bag.svg" alt=""> <span id="productNum_cart1"></span></a>
                </div>
            </div>

        </div>
    </header>
    <!-- 模态框（Modal） -->
    <!--收藏-->
    <div class="modal fade" id="favourite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 class="modal-title" id="myModalLabel">
                       我的收藏
                    </h6>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                </div>
                <div class="modal-body">
                    <div class="favourite-item">
                        <div class="float-left"><img src="${pageContext.request.contextPath}/front_style/img/product-img/product-3.jpg" class="img-thumbnail"></div>
                        <div class="float-left" style="margin-left: 30px">
                            <p>ZARA</p>
                            <h5>秋季新品衬衫cccccccccccc</h5>
                            <h6>￥500</h6>
                            <p><span>颜色：白色</span>&nbsp;&nbsp;<span>尺寸：L</span></p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="favourite-item">
                        <div class="float-left"><img src="${pageContext.request.contextPath}/front_style/img/product-img/product-4.jpg" class="img-thumbnail"></div>
                        <div class="float-left" style="margin-left: 30px">
                            <p>ZARA</p>
                            <h5>秋季新品衬衫</h5>
                            <h6>￥500</h6>
                            <p><span>颜色：白色</span>&nbsp;&nbsp;<span>尺寸：L</span></p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
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
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
    <!--登陆 注册-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#login" data-toggle="tab">
                                <h6 class="modal-title" >登陆</h6>
                            </a>
                        </li>
                       &nbsp; |&nbsp;
                        <li>
                            <a href="#register" data-toggle="tab">
                                <h6 class="modal-title" >注册</h6>
                            </a>
                        </li>

                    </ul>

                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                </div>

                <div class="modal-body">
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane active" id="login">
                            <form>
                            <div class="control-group">
                                    <input type="text" id="phone" class="form-control" placeholder="手机号"/>
                            </div>
                            <br>
                            <div class="control-group">
                                    <input type="password" id="pwd" class="form-control" placeholder="密码"/>
                            </div>
                                <hr>
                           <div id="loginFail"class=" alert alert-warning alert-dismissable fade show"style="display:none;margin:5px" >
									    <button type="button" class="close" data-dismiss="alert">&times;</button>
									    <strong>提示:</strong>用户名或密码错误~
  							</div>
                             <div style="float: right">
                                 <button type="button" class="btn btn-primary" id="loginbtn"> 登陆</button>
                                 <button type="button" class="btn btn-default" data-dismiss="modal">关闭 </button>
                             </div>

                            </form>
                        </div>
  
                        <div class="tab-pane fade" id="register">
                            	<form id="form1" method="post" onsubmit="return reg(this);">
                                <div class="control-group register">
                                    <input type="text" name="username" id="username" class="form-control " placeholder="昵称"/>
                                </div>
                                <br>
                                <div class="control-group">
                                    <input type="password" name="pwd" id="pwd" class="form-control " placeholder="密码"/>
                                </div>
                                 <br>
                                <div class="control-group">
                                    <input type="text" name="phone" id="phone" class="form-control" placeholder="手机号码"/>
                                </div>
                                <br>
                                <div class="control-group">
                                   性别：<span><input type="radio" value="男" name="sex">男</span><span><input type="radio" value="女" name="sex">女</span>
                                </div>
                                
                                
                                 <div id="errorDiv"class=" alert alert-warning alert-dismissable fade show"style="display:none;margin:5px" >
									    <button type="button" class="close" data-dismiss="alert">&times;</button>
									    <strong>提示:</strong><span id="errorMsg"></span> 
  							</div>
  								
								<div  id="success"  class="alert alert-success alert-dismissable fade show"style="display:none;margin-top:8px;">
								  <button type="button" class="close" data-dismiss="alert">&times;</button>
								  <strong>注册成功!</strong>快去登陆吧~
								</div>
  								
                             
                                <hr>
                                <div style="float: right">
                                    <input type="submit" class="btn btn-primary" id="doReg" value="注册" >
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Right Side Cart Area ##### -->
    <div class="cart-bg-overlay"></div>
    <div class="right-side-cart-area">
        <!-- Cart Button -->
        <div class="cart-button">
            <a href="#" id="rightSideCart"><img src="${pageContext.request.contextPath}/front_style/img/core-img/bag.svg" alt=""> <span id="productNum_cart"></span></a>
        </div>
        <div class="cart-content d-flex">
            <!-- Cart List Area -->
            <div class="cart-list" id="cart-list"> </div> 

            <!-- Cart Summary -->
            <div class="cart-amount-summary">

                <h2>Summary</h2>
                <ul class="summary-table" id="summary">
                 <!--     -->
                    <li><span>快递</span> <span>包邮</span></li>
                    <li><span>折扣</span> <span>0</span></li>
                    <li><span>总价</span> <span id="totalmoney">0</span></li>
                </ul>
                <div class="checkout-btn mt-100">
                    <a class="btn essence-btn"  onclick="checkout()">结算</a>
                </div>
            </div>
        </div>
    </div><div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
    <!-- ##### Right Side Cart End ##### -->
<script type="text/javascript">

	$(function(){
		var userid=$("#userid").val(); 
		if(userid!=""){
			  $.ajax({
		             type:"post",
		             url:"${pageContext.request.contextPath}/shopingcart/totalnum",
		             data:"userid="+userid,
		             success:function(data){
		            	 $("#productNum_cart").text(data);
			            $("#productNum_cart1").text(data);
		             }
		         });
		};
		$.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/type/parent_typeList",
            success:function(ptypes){
            	var li=	" <li class=\"title\">Women's Collection</li>\r\n" + 
        		             "<li><a  href='${pageContext.request.contextPath}/shop?ptype='''>所有</a></li>";
            	 $.each(ptypes,function(index,ptype){
            	 li+="<li><a href=${pageContext.request.contextPath}/shop?ptype="+ptype.type+">"+ptype.type+"</a></li>";
            	 });
            	
           	 $(".ptype").append(li);
            }
        });
	})
     function reg(form) {
         $.ajax({
             type : "post",
             url : "${pageContext.request.contextPath}/doRegister",
             data : $(form).serialize(),
             success : function(data) {
                 if (data == "yes") {
                     $("#success").show();
                 } else {
                	 alert(data);
                     $("#errorMsg").text(data);
                     $("#errorDiv").show();
                 }
             }
         });
         return false;
     }

     $("#loginbtn").click(function(){
         var phone=$("#phone").val();
         var pwd=$("#pwd").val();
         $.ajax({
             type:"post",
             url:"${pageContext.request.contextPath}/doLogin",
             data:"phone="+phone+"&pwd="+pwd,
             success:function(data){
                 if(data=="yes"){
                     window.location.reload();
                 }else{
                     $("#loginFail").show();
                 }
             }
         });
     } );
     
     function showProduct_cart(){
    	  var userid=$("#userid").val(); 
    	  $("#cart-list").text("");
    	  $("#totalmoney").text(0);
    	   totalmoney=0;
  	   $.ajax({
               type:"post",
               url:"${pageContext.request.contextPath}/shopingcart/queryCart",
               data:"userid="+userid,
               success:function(cartlist){
            	   var div="";
            	     $.each(cartlist,function(index,product){
			              div =div+"<div class=\"single-cart-item\">\r\n" + 
						"<a href=\"#\" class=\"product-image\">\r\n" + 
						"    <img src=${pageContext.request.contextPath}/pic/"+product.goodspic+" class=\"cart-thumb\" alt=\"\">\r\n" + 
						"    <!-- Cart Item Desc -->\r\n" + 
						"<div class=\"cart-item-desc\">\r\n" + 
						"<input  type=hidden  value="+product.shoppingcarid+">\r\n" + 
					   "<span class='product-check'><input type=checkbox name=isCheck onchange='check(\""+product.goodsname+"\",this,\""+product.price+"\")'></span>\r\n" + 
						"    <span class=\"product-remove\" onclick='deleteProduct(this,\""+product.shoppingcarid+"\")'><i class=\"fa fa-close\" aria-hidden=\"true\"></i></span>\r\n" + 
						"    <span class=\"badge\">"+product.goodsdescrib+"</span>\r\n" + 
						"    <h6>"+product.goodsname+"</h6>\r\n" + 
						"<p class=\"size\">Size: "+product.size+"</p>\r\n" + 
						"<p class=\"color\">Color: <input id=colorbox type=button class=btn style='background:"+product.color+";display:inline;width:30px;height:15px'></p>\r\n" +
						"<p>数量： <input type=number value="+product.productnum+"  class='form-control col-md-5'  min='0' style='display: inline'></p>\r\n" +
						"<p class=\"price\">价格："+product.price+"元/件</p>\r\n" + 
						"</div>\r\n" + 
						"</a>\r\n" + 
						"</div>\r\n" + 
						"</div>"; 
			         	      });
            	     $("#cart-list").append(div);
               }
           }); 
     }
     
     function deleteProduct(span,cartid){
    		$(span).parent().parent().css("display","none");
    		  $.ajax({
    	             type:"post",
    	             url:"${pageContext.request.contextPath}/shopingcart/deleteProduct_cart",
    	             data:"shoppingcarid="+cartid,
    	             success:function(data){
    	            	 var num= $("#productNum_cart").text();
    	            	 var newnum=parseInt(num)-1;
    	            	 $("#productNum_cart").text(newnum);
 			            $("#productNum_cart1").text(newnum);
    	             }
    	               
    	         });
     }
     
     
     var totalmoney=0;
     function check(name,span,price){
    	 var money=0;
    	 var num=0;
    	 if(span.checked) {
    		 var numbox=$(span).parent().parent().find("input[type=number]");
        	  num=numbox.val();//数量
    		var newmoney=-1;
    		 money=parseFloat(price)*parseInt(num);
	    		 numbox.change(function() {
	    			 if(span.checked){
	    				 var newnum=numbox.val();//数量
		    			 if(newmoney==-1){
		    			 	var old=money;
		    			 }else{
		    				 var old=newmoney;
		    			 }
		    			 if(newnum>=0){
		        			 newmoney=parseFloat(price)*parseInt(newnum);
		    			 }
		    			 totalmoney=totalmoney-old+newmoney;
		     	    	$("#totalmoney").text(totalmoney); 
	    			 }
	    	     });
    		 }else{
    				 var numbox=$(span).parent().parent().find("input[type=number]");
           			  num=numbox.val();//数量
  					money=-(parseFloat(price)*parseInt(num));
           			  span.checked=false;
    			 } 
    		 totalmoney+=money;
    		$("#totalmoney").text(totalmoney);
    }
     
     var products=[];
    function checkout(){
    	$("#cart-list").find('input[type=checkbox]').each(function() {
          if(this.checked){
        	  var product={};
        	  var cartid=$(this).parent().parent().find("input[type=hidden]").val();
        	  var num=$(this).parent().parent().find("input[type=number]").val();
        	  product['shoppingcarid']=cartid;
        	  product['productnum']=num;
        	  products.push(product);
          }
        });
  	  $.ajax({
          type:"post",
          url:"${pageContext.request.contextPath}/shopingcart/checkout",
          contentType : "application/json",
          data:JSON.stringify(products),
          success:function(data){
        	  var parames = new Array();
              parames.push({ name: "total", value: data});
        	  Post("${pageContext.request.contextPath}/order/checkout_page", parames);
          }
            
      });
    }			
    function Post(URL, PARAMTERS) {
        var temp_form = document.createElement("form");
        temp_form.action = URL;
        temp_form.target = "_self";
        temp_form.method = "post";
        temp_form.style.display = "none";
        for (var item in PARAMTERS) {
            var opt = document.createElement("textarea");
            opt.name = PARAMTERS[item].name;
            opt.value = PARAMTERS[item].value;
            temp_form.appendChild(opt);
        }
        document.body.appendChild(temp_form);
        temp_form.submit();
    }
</script>
</body>
</html>