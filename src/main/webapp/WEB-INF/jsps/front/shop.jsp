<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE  html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>买衣服</title>
</head>
<style>
.widget .catagories-menu .sub-menu li > a:hover{
cursor:default;
}
</style>
<body>
<%@ include file="menu.jsp"%>
<!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb_area bg-img" style="background-image: url(${pageContext.request.contextPath}/front_style/img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="page-title text-center">
                        <h2>dresses</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Shop Grid Area Start ##### -->
    <section class="shop_grid_area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop_sidebar_area">

                        <!-- ##### Single Widget ##### -->
                        <div class="widget catagory mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Catagories</h6>

                            <!--  Catagories  -->
                            <div class="catagories-menu">
                                <ul id="menu-content2" class="menu-content collapse show">
                                    <!-- Single Item -->
                                    <c:forEach var="ptype" items="${typeExt }">
                                      <li data-toggle="collapse" data-target="#${ ptype.type}">
                                        <a href="#" id="ptype1">${ptype.type }</a>
                                        <ul class="sub-menu  show" id="${ptype.type}">
                                            <li><a  onclick="selectPtype('${ptype.type}')">All</a></li>
                                            <c:forEach var="ctype" items="${ptype.ctypelist}"> 
                                              <li><a onclick="selectCtype('${ctype.type}')">${ctype.type}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget price mb-50">
                            <!-- Widget Title -->
                            <h6 class="widget-title mb-30">Filter by</h6>
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Price</p>

                            <div class="widget-desc">
                                <div class="slider-range">
                                    <div data-min="0" data-max="1000" data-unit="￥" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="49" data-value-max="360" data-label-result="Range:">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    </div>
                                    <div class="range-price">Range: ￥49.00 - ￥360.00</div>
                                </div>
                            </div>
                            <input type="button" class="btn " value="ok" onclick="showpage(1)" style="display:inline; float:right ;height:30px;padding:5px"> 
                        </div>

                        <!-- ##### Single Widget ##### -->
                        <div class="widget color mb-50">
                            <!-- Widget Title 2 -->
                            <p class="widget-title2 mb-30">Color</p>
                            <div class="widget-desc">
                              点击选择：<input onchange="change()" type="color"  id="color" style="border:1px white solid ;width:120px;height:10px;border-radius:20%">
                             <input type="button" class="btn " value="×" onclick="clear_color()" style="display:inline; float:right ;height:30px;padding:5px"> 
                            </div>
                        </div>

                    
                    </div>
                </div>

                <div class="col-12 col-md-8 col-lg-9">
                    <div class="shop_grid_product_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="product-topbar d-flex align-items-center justify-content-between">
                                    <!-- Total Products -->
                                    <div class="total-products">
                                        <p><span id="totalproducts">${page.totalnum }</span> products found</p>
                                    </div>
                                    <!-- Sorting -->
                                    <div class="product-sorting d-flex">
                                        <p>Sort by:</p>
                                        <form action="#" method="get">
                                            <select name="select" id="order" onchange="sequence()">
                                                <option value="" >上市时间</option>
                                                <option value="asce" >价格升序</option>
                                                <option value="desc" >价格降序</option>
                                            </select>
                                            <input type="submit" class="d-none" value="">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                   <div class="row"  id="goodsDiv">
                   
					<c:forEach items="${page.goods }" var="goods">
					<!-- Single Product -->
                            <div class="col-12 col-sm-6 col-lg-4" > 
                                <div class="single-product-wrapper">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="${pageContext.request.contextPath}/pic/${ goods.goodspic}" alt="">
                                      <%--   <!-- Hover Thumb -->
                                        <img class="hover-img" src="${pageContext.request.contextPath}/front_style/img/product-img/product-2.jpg" alt=""> --%>

                                        <!-- Product Badge -->
                                     <!--    <div class="product-badge offer-badge">
                                            <span>-30%</span>
                                        </div> -->
                                        <!-- Favourite -->
                                        <div class="product-favourite">
                                            <a href="#" class="favme fa fa-heart"></a>
                                        </div>
                                    </div>

                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <span>${ goods.goodsdescrib}</span>
                                        <a href="${pageContext.request.contextPath}/product_detail.html?goodsid=${goods.goodsid}">
                                            <h6>${goods.goodsname }</h6>
                                        </a>
                                        <p class="product-price"> ${goods.price}</p>

                                        <!-- Hover Content -->
                                        <div class="hover-content">
                                            <!-- Add to Cart -->
                                            <div class="add-to-cart-btn">
                                                <a href="${pageContext.request.contextPath}/product_detail.html?goodsid=${goods.goodsid}" class="btn essence-btn">essence</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
					
					</c:forEach>
                  </div>
                  </div>
                           
                            
                  
                    <!-- Pagination -->
                    <nav aria-label="navigation" style="margin-left:180px">
                        <ul class="pagination mt-50 mb-70">
                            <li class="page-item"><a class="page-link" onclick="pre()"><i class="fa fa-angle-left"></i></a></li>
                            <li class="page-item"><a class="page-link"  onclick="showpage(1)">1</a></li>
                            <li class="page-item"><a class="page-link" onclick="showpage(2)">2</a></li>
                            <li class="page-item"><a class="page-link" onclick="showpage(3)">3</a></li>
                            <li class="page-item"><a class="page-link" onclick="next()"><i class="fa fa-angle-right"></i></a></li>
                            <li style="margin-left:80px;margin-top:8px">第<a id="curr">1</a>页/共<a id="totalpage">${page.totalPage }</a>页</li>
                        </ul>
                    </nav>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Shop Grid Area End ##### -->
<%@ include file="footer.jsp"%>
<script type="text/javascript">
var maxprice="";
var minprice="";
var color="";
var ctype='';
var ptype='';
var order='';

$('.slider-range-price').each(function () {
    var min = jQuery(this).data('min');
    var max = jQuery(this).data('max');
    var unit = jQuery(this).data('unit');
    var value_min = jQuery(this).data('value-min');
    var value_max = jQuery(this).data('value-max');
    var label_result = jQuery(this).data('label-result');
    var t = $(this);
    $(this).slider({
        range: true,
        min: min,
        max: max,
        values: [value_min, value_max],
        slide: function (event, ui) {
            var result = label_result + " " + unit + ui.values[0] + ' - ' + unit + ui.values[1];
            console.log(t);
            t.closest('.slider-range').find('.range-price').html(result);
            maxprice=ui.values[1];
            minprice=ui.values[0];
        }
    });
});


	function selectPtype(mytype){
		ptype=mytype;
		ctype='';
		showpage(1);
	}
	
	function selectCtype(mytype){
		ctype=mytype;
		ptype='';
		showpage(1);
	}
	
	function change(){
		 color=$("#color").val();
		 showpage(1);
	}
	
	function clear_color(){
		color="";
		showpage(1);
	}
	function  sequence(){
		order=$("#order").val();
		 showpage(1);
	}
	 var items="";
	 function getItems(){
		 items=JSON.stringify({
				"ctype":ctype,
				"ptype":ptype,
				"minprice":minprice,
				"maxprice":maxprice,
				"color":color,
				"order":$("#order").val()
		 });
 } 
	 

	var curr;
	var totalPage;
	function pre(){
		if(curr!=1)
			showpage(curr-1);
	}
	function next(){
		if(curr!=totalPage){
			showpage(curr+1);
		}
	}
	function showpage(currentPage){
		$("#goodsDiv").text("");
		getItems();
		  $.ajax({
	            type : "post",
	            data:items,
	            contentType : "application/json",
	            url : "${pageContext.request.contextPath  }/goods/findGoodsBySelectItems?currentPage="+currentPage+"&pageSize="+9,
	            success : function(page) {
	            	var goodslist=page.goods;
	             	var goodsDiv="";
	            	curr=page.currentPage;
	            	totalPage=page.totalPage;
	            	$("#totalpage").text(totalPage);
	            	$("#curr").text(curr);
	            	$("#totalproducts").text(page.totalnum);
	             $.each(goodslist,function(index,goods){
	            	var   tr=	"<div class='col-12 col-sm-6 col-lg-4'>\r\n" + 
	            	"<div class=\"single-product-wrapper\">\r\n" + 
	    	   		"                                    <!-- Product Image -->\r\n" + 
	    	   		"                                    <div class=\"product-img\">\r\n" + 
	    	   		"                                        <img src=\"${pageContext.request.contextPath}/pic/"+goods.goodspic+"\" alt=\"\">\r\n" +                                 
	    	   		"                                        <!-- Favourite -->\r\n" + 
	    	   		"                                        <div class=\"product-favourite\">\r\n" + 
	    	   		"                                            <a href=\"#\" class=\"favme fa fa-heart\"></a>\r\n" + 
	    	   		"                                        </div>\r\n" + 
	    	   		"                                    </div>\r\n" + 
	    	   		"                                    <!-- Product Description -->\r\n" + 
	    	   		"                                    <div class=\"product-description\">\r\n" + 
	    	   		"                                        <span>"+goods.goodsdescrib+"</span>\r\n" + 
	    	   		"                                        <a href=\"${pageContext.request.contextPath}/product_detail.html?goodsid="+goods.goodsid+"\">\r\n" + 
	    	   		"                                            <h6>"+goods.goodsname +"</h6>\r\n" + 
	    	   		"                                        </a>\r\n" + 
	    	   		"                                        <p class=\"product-price\"> "+goods.price+"</p>\r\n" + 
	    	   		"                                        <!-- Hover Content -->\r\n" + 
	    	   		"                                        <div class=\"hover-content\">\r\n" + 
	    	   		"                                            <!-- Add to Cart -->\r\n" + 
	    	   		"                                            <div class=\"add-to-cart-btn\">\r\n" + 
	    	   		"                                                <a href=\"${pageContext.request.contextPath}/product_detail.html?goodsid="+goods.goodsid+"'\" class=\"btn essence-btn\">essence</a>\r\n" + 
	    	   		"                                            </div>\r\n" + 
	    	   		"                                        </div>\r\n" + 
	    	   		"                                    </div>\r\n" + 
	    	   		"                                    </div>\r\n" + 
	    	   		"                                </div>";
	            	goodsDiv=goodsDiv+tr; 
	             });
	             $("#goodsDiv").css("display","none");
				$("#goodsDiv").append(goodsDiv); 
				$("#goodsDiv").fadeIn(500);
	            } 
	        });
   	 }
</script>
</body>
</html>