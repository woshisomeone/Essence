<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- start: CSS -->
	<link href="${pageContext.request.contextPath}/behind_style/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/behind_style/css/bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/behind_style/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/behind_style/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/behind_style/css/retina.css" rel="stylesheet" />
	<!-- end: CSS -->

	<!-- start: Favicon and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/behind_style/ico/apple-touch-icon-144-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/behind_style/ico/apple-touch-icon-114-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/behind_style/ico/apple-touch-icon-72-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/behind_style/ico/apple-touch-icon-57-precomposed.png" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/behind_style/ico/favicon.png" />
<title>登陆/注册</title>
</head>
<body>
	<div class="container-fluid-full">
    <div class="row-fluid">

        <div class="row-fluid">

            <div class="login-box">
                <!--标签页-->
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#home" data-toggle="tab">
                            登陆
                        </a>
                    </li>
                    <li><a href="#ios" data-toggle="tab">注册</a></li>
                </ul>

                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="home">
                        <h2>登陆账号</h2>
                        <form class="form-horizontal" action="index.html" method="post"/>
                        <fieldset>

                            <input class="input-large span12" name="adminid" id="adminid" type="text"
                                   placeholder="管理员账号"/>

                            <input class="input-large span12" name="adminpwd" id="adminpwd" type="password"
                                   placeholder="管理员密码"/>

                            <div class="clearfix"></div>
<!-- 
                            <label class="remember" for="remember"><input type="checkbox" id="remember"/>Remember
                                me</label>

                            <div class="clearfix"></div> -->

                            <button type="button" class="btn btn-primary span12" id="loginbtn">Login</button>
                        </fieldset>

                        </form>
                        <hr/>
                        <h3>Forgot Password?</h3>
                        <p>
                          <div id="loginFail"class=" alert alert-warning alert-dismissable show"style="display:none;margin:5px" >
									    <button type="button" class="close" data-dismiss="alert" style="top:-15px">&times;</button>
									    <strong>提示:</strong>用户名或密码错误~
  							</div>
                        </p>
                    </div>
                    <div class="tab-pane fade" id="ios">
                        <h2>注册账号</h2>
                        <form class="form-horizontal" method="post" onsubmit="return reg(this);">
                        <fieldset>

                            <input class="input-large span12" name="adminname" id="adminname" type="text"
                                   placeholder="用户名"/>

                            <input class="input-large span12" name="adminpwd" id="adminpwd" type="password"
                                   placeholder="密码"/>

                            <div class="clearfix"></div>
                        
                            <button type="submit" class="btn btn-primary span12">注册</button>
                        </fieldset>

                        </form>
                        <hr/>
                        <h3>essen后台管理</h3>
                            <div class="clearfix"></div>
						   <div id="errorDiv"class=" alert alert-warning alert-dismissable show"style="display:none;margin:5px" >
							    <button type="button" class="close" data-dismiss="alert" style="top:-15px">&times;</button>
							    <strong>提示:</strong><span id="errorMsg"></span> 
  							</div>
 								
							<div  id="success"  class="alert alert-success alert-dismissable show" style="display:none;margin-top:8px;">
							  <button type="button" class="close" data-dismiss="alert"  style="top:-15px">&times;</button>
							<p>  注册成功!请记住您的账号：<p><strong><p id="account"></strong></p>
							</div>
					<div class="clearfix"></div>
                    </div>
                </div>
            </div><!--/row-->

        </div><!--/fluid-row-->

    </div><!--/.fluid-container-->
    </div>
<%@ include file="footer.jsp" %>
  <script type="text/javascript">
      function reg(form) {
         $.ajax({
             type : "post",
             url : "${pageContext.request.contextPath}/behind/doRegister",
             data : $(form).serialize(),
             async: false,
             success : function(data) {
            	 var my=data;
                 if (my.indexOf("管理员"!=-1)) {
                	 $("#account").text(data);
                     $("#success").show();
                 } else {
                     $("#errorMsg").text(data);
                     $("#errorDiv").show();
                 }
             }
         });
         return false;
     }

     $("#loginbtn").click(function(){
         var adminid=$("#adminid").val();
         var adminpwd=$("#adminpwd").val();
         $.ajax({
             type:"post",
             url:"${pageContext.request.contextPath}/behind/doLogin",
             data:"adminid="+adminid+"&adminpwd="+adminpwd,
             success:function(data){
                 if(data=="yes"){
                     window.location.href="${pageContext.request.contextPath}/behind/index";
                 }else{
                     $("#loginFail").show();
                 }
             }
         });
     } );
</script>
</body>
</html>