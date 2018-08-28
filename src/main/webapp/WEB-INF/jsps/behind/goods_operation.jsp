<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- start: Meta -->
	<title>SimpliQ - Flat & Responsive Bootstrap Admin Template</title>
<link href="${pageContext.request.contextPath}/behind_style/inputfile/css/bootstrap.css" rel="stylesheet">
<%@ include file="menu.jsp" %>
<link href="${pageContext.request.contextPath}/behind_style/inputfile/css/fileinput.css" rel="stylesheet">
<style>
	.file-preview{
		width: 90%;
		margin-left: 3%;
	}
	.pagination ul{
		display: block;
		margin-left: 30%;
	}
	.pagination li{
	cursor:pointer;
	}
	.step{
		margin-left: 70px;
	}
	.step span{
		margin: 15px;
	}
	.step-content input[type="text"]{
		border: none;
		border-bottom: 1px solid black;;
		height: 30px;
	}
	input[type="number"]{
	height: 30px;
	}
	
	.modal{
		bottom:auto;
		overflow-y: auto;
	}
	.carousel-indicators {
    position: absolute;
    top: 300px;
    }
.carousel-control .icon-next, .carousel-control .glyphicon-chevron-right {
    right: 2%;
}
</style>
<body>					
			<!-- start: Content -->
			<div id="content" class="span10">
			<div class="row-fluid">
			<div class="box span12" > 
					<div class="box-header">
						<h2><i class="icon-edit"></i>添加商品</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div id="MyWizard" class="wizard">
							<ul class="steps" >
								<li data-target="#step1" class="active"><span class="badge badge-info">1</span></li>
								<li data-target="#step2"><span class="badge">2</span></li>
								<li data-target="#step3"><span class="badge">3</span></li>
								<li data-target="#step4"><span class="badge">4</span></li>
								<!--<li data-target="#step5"><span class="badge">5</span></li>-->
							</ul>
							<div class="actions">
								<button type="button" class="btn btn-prev"> <i class="icon-arrow-left"></i> Prev</button>
								<button type="button" class="btn btn-success btn-next" data-last="Finish" id="next">Next <i class="icon-arrow-right"></i></button>
							</div>
						</div>
						<div class="step-content">
							<!--#########第1步#########-->
							<div class="step-pane active" id="step1">
								<form class="form-horizontal"  onsubmit="return addgoods(this);" method="post"/>
									<fieldset>	
										<div class="control-group ">
											<label class="control-label" for="inputWarning">商品名称</label>
											<div class="controls">
									  			<input type="text" id="goodsName" name="goodsname" />
											</div>
								  		</div>
								  		<div class="control-group ">
											<label class="control-label" for="inputError">商品价格</label>
											<div class="controls">
									  			<input type="text" id="price"  name="price"/>
											</div>
								  		</div>

										<div class="control-group ">
											<label class="control-label" for="inputSuccess">商品材质</label>
											<div class="controls">
												<input type="text" id="goodsDescrib"  name="goodsdescrib"/>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="type">商品类型</label>
											<div class="controls">
												<select id="type" name="type" >
												</select>
											</div>
										</div>
										<div class="control-group ">
											<label class="control-label" for="inputSuccess">商品库存</label>
											<div class="controls">
												<input type="number" min="0" max="" value="1" id="totalNum"  name="totalnum"/>
											</div>
										</div>
										<div class="control-group ">
											<div  id="success"  class="  alert alert-success alert-dismissable show" style="display:none;margin:8px 0 0 100px; width:20%;">
												  <button type="button" class="close" data-dismiss="alert"  >&times;</button>
												<p>  <strong>添加成功!</strong><p>>>第2步，添加具体信息</p></p>
											</div>
											 <div id="errorDiv"class=" alert alert-warning alert-dismissable show"style="display:none;margin:8px 0 0 100px; width:20%;">
										    <button type="button" class="close" data-dismiss="alert" style="top:-15px">&times;</button>
										    <strong>提示:</strong>添加失败~</span> 
			  							</div>
  									</div>
								<div class="controls">
									<button type="submit" class="btn btn-primary">提交</button>
									<button type="reset" class="btn">Cancel</button>
								</div>
									</fieldset>
								</form>
								
							</div>
							<!--#########第2步#########-->
							<div class="step-pane" id="step2">
								<form class="step" onsubmit="return addproduct(this);" method="post">
									<fieldset>
											<div class="control-group ">
												<span>商品编号</span>
												<input type="text"name="goodsid"   id="showgoodsid"/>
											</div>
											<div class="control-group ">
												<span>商品名称</span>
												<input type="text"name="goodsname"  id="showgoodsname" />
											</div>
											<div class="control-group ">
												<span>商品颜色</span>
												<input type="color"id="color" name="color" value="#c09853" />
											</div>
											<div class="control-group">
												<span>商品尺寸</span>
													<select id="size" name="size">
													
													</select>
											</div>
											<div class="control-group">
												<span>此类型库存</span>
												<input type="number" min="0" max="" value="1" id="productNum"  name="productnum"/>
											</div>
												<div class="control-group ">
											<div  id="success1"  class="  alert alert-success alert-dismissable show" style="display:none;margin:8px 0 0 10px; width:20%;">
												  <button type="button" class="close" data-dismiss="alert"  >&times;</button>
												<p>  <strong>添加成功!</strong><p>>>第3步，添加图片信息</p></p>
											</div>
											 <div id="errorDiv1"class=" alert alert-warning alert-dismissable show"style="display:none;margin:8px 0 0 10px; width:20%;">
										    <button type="button" class="close" data-dismiss="alert" style="top:-15px">&times;</button>
										    <strong>提示:</strong>添加失败~</span> 
			  							</div>
  									</div>
										<div class="controls">
											<button type="submit" class="btn btn-primary">提交</button>
											<button type="reset" class="btn">Cancel</button>
										</div>
									</fieldset>
								</form>
							</div>
							<!--#########第3步#########-->
							<div class="step-pane" id="step3">
								
								<fieldset>
								<div style="margin-left: 40px">
									<div class="control-group ">
										<span>商品编号</span>
									<input type="text"name="goodsid"  id="showgoodsid1" onchange="test()"/>
									</div>
									<div class="control-group ">
										<span>商品名称</span>
										<input type="text"name="goodsname" id="showgoodsname1" />
									</div>
								</div>
								
										<!-- 上传图片 -->				
								<form id="jvForm" class="form-horizontal"   action="${pageContext.request.contextPath}/goods/updateGoodsShowPic" method="post" enctype="multipart/form-data" >
									<div class="control-group">
										<label class="control-label" for="file">上传封面展示图片：</label>
									
										<div class="controls">
												<input id="file" type="file" name="file"/>
												<input type="button" class="btn btn-primary" onclick="uploadPic()" value="上传">
										</div>
										
										<div  id="success2"  class="  alert alert-success alert-dismissable show" style="display:none;margin:8px 0 0 35px; width:20%;">
												  <button type="button" class="close" data-dismiss="alert"  >&times;</button>
												<p>  <strong>上传成功!</strong></p>
										</div>
										
										 <div id="errorDiv2"class=" alert alert-warning alert-dismissable show"style="display:none;margin:8px 0 0 35px; width:20%;">
										    <button type="button" class="close" data-dismiss="alert" style="top:-15px">&times;</button>
										    <strong>提示:</strong>上传失败~</span> 
			  							</div>
									</div>
								</form>
								<div class="clearfix"></div>
								<!-- <input type="button" onclick="test()" value="上传详细图片"> -->
								<div class="uploadfile">
									<p style="margin-left: 40px">上传详情图片：</p>
									<input id="testFile"  type="file" multiple name="file" class="file-loading"  onchange="test()">
								</div>
								
							</fieldset>
									
							</div>
							
							
							
							<!--#########第4步#########-->
							<div class="step-pane" id="step4">
								<form class="form-horizontal" />
									<fieldset>
										<!--商品列表-->
											<div class="row-fluid">
											<div class="control-group " style="float:right;margin:0 20px 10px 0;">
												<span>商品编号</span>
											<input type="text"name="goodsid"  id="goodsidForselect"/>
											<input type="button"  value="查看"onclick="showAllGoods()" class="btn btn-info" id="showGoods" >
									</div>
												
													<div class="box-content">
														<table class="table table-striped table-bordered bootstrap-datatable datatable">
															<thead>
															<tr>
																<th>商品编号</th>
																<th>商品名称</th>
																<th>商品类型</th>
																<th>商品价格</th>
																<th>商品材质</th>
																<th>商品库存</th>
																<th>展示图片</th>
																<th>发布时间</th>
																<th>操作</th>
															</tr>
															</thead>
															<tbody id="tbody">
															</tbody>
														</table>
														<!-- /.modal -->
			
														<div class="pagination " style="display:block">
															<ul>
																<li><a onclick="pre()">Prev</a></li>
																<li >
																	<a onclick="showpage(1)">1</a>
																</li>
																<li><a onclick="showpage(2)">2</a></li>
																<li><a onclick="showpage(3)">3</a></li>
																<li><a onclick="showpage(4)">4</a></li>
																<li><a onclick="next()">Next</a></li>
															</ul>
															<span style="float:right">第<span id="curr"></span>页/共<span id="totalpage"></span>页</span>
														</div>
														
													</div>
												</div><!--/span-->
									</fieldset>
								</form>	
							</div>

						</div>
					
					</div>
					
				</div><!--/span-->

			</div><!--/row-->	
		
			
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" />
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Auto complete </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]' />
								<p class="help-block">Start typing to activate auto complete!</p>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Date input</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12" />
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">File input</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="fileInput" type="file" />
							  </div>
							</div>          
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Textarea WYSIWYG</label>
							  <div class="controls">
								<textarea class="cleditor" id="textarea2" rows="3"></textarea>
							  </div>
							</div>
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Save changes</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" />
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Focused input</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused…" />
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label">Uneditable input</label>
								<div class="controls">
								  <span class="input-xlarge uneditable-input">Some value here</span>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="disabledInput">Disabled input</label>
								<div class="controls">
								  <input class="input-xlarge disabled" id="disabledInput" type="text" placeholder="Disabled input here…" disabled="" />
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="optionsCheckbox2">Disabled checkbox</label>
								<div class="controls">
								  <label class="checkbox">
									<input type="checkbox" id="optionsCheckbox2" value="option1" disabled="" />
									This is a disabled checkbox
								  </label>
								</div>
							  </div>
							  <div class="control-group warning">
								<label class="control-label" for="inputWarning">Input with warning</label>
								<div class="controls">
								  <input type="text" id="inputWarning" />
								  <span class="help-inline">Something may have gone wrong</span>
								</div>
							  </div>
							  <div class="control-group error">
								<label class="control-label" for="inputError">Input with error</label>
								<div class="controls">
								  <input type="text" id="inputError" />
								  <span class="help-inline">Please correct the error</span>
								</div>
							  </div>
							  <div class="control-group success">
								<label class="control-label" for="inputSuccess">Input with success</label>
								<div class="controls">
								  <input type="text" id="inputSuccess" />
								  <span class="help-inline">Woohoo!</span>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError3">Plain Select</label>
								<div class="controls">
								  <select id="selectError3">
									<option />Option 1
									<option />Option 2
									<option />Option 3
									<option />Option 4
									<option />Option 5
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError">Modern Select</label>
								<div class="controls">
								  <select id="selectError" data-rel="chosen">
									<option />Option 1
									<option />Option 2
									<option />Option 3
									<option />Option 4
									<option />Option 5
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError1">Multiple Select / Tags</label>
								<div class="controls">
								  <select id="selectError1" multiple="" data-rel="chosen">
									<option />Option 1
									<option selected="" />Option 2
									<option />Option 3
									<option />Option 4
									<option />Option 5
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError2">Group Select</label>
								<div class="controls">
									<select data-placeholder="Your Favorite Football Team" id="selectError2" data-rel="chosen">
										<option value="" />
										<optgroup label="NFC EAST">
										  <option />Dallas Cowboys
										  <option />New York Giants
										  <option />Philadelphia Eagles
										  <option />Washington Redskins
										</optgroup>
										<optgroup label="NFC NORTH">
										  <option />Chicago Bears
										  <option />Detroit Lions
										  <option />Green Bay Packers
										  <option />Minnesota Vikings
										</optgroup>
										<optgroup label="NFC SOUTH">
										  <option />Atlanta Falcons
										  <option />Carolina Panthers
										  <option />New Orleans Saints
										  <option />Tampa Bay Buccaneers
										</optgroup>
										<optgroup label="NFC WEST">
										  <option />Arizona Cardinals
										  <option />St. Louis Rams
										  <option />San Francisco 49ers
										  <option />Seattle Seahawks
										</optgroup>
										<optgroup label="AFC EAST">
										  <option />Buffalo Bills
										  <option />Miami Dolphins
										  <option />New England Patriots
										  <option />New York Jets
										</optgroup>
										<optgroup label="AFC NORTH">
										  <option />Baltimore Ravens
										  <option />Cincinnati Bengals
										  <option />Cleveland Browns
										  <option />Pittsburgh Steelers
										</optgroup>
										<optgroup label="AFC SOUTH">
										  <option />Houston Texans
										  <option />Indianapolis Colts
										  <option />Jacksonville Jaguars
										  <option />Tennessee Titans
										</optgroup>
										<optgroup label="AFC WEST">
										  <option />Denver Broncos
										  <option />Kansas City Chiefs
										  <option />Oakland Raiders
										  <option />San Diego Chargers
										</optgroup>
								  </select>
								</div>
							  </div>
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header">
						<h2><i class="icon-edit"></i>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="icon-wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" />
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="prependedInput">Prepended text</label>
								<div class="controls">
								  <div class="input-prepend">
									<span class="add-on">@</span><input id="prependedInput" size="16" type="text" />
								  </div>
								  <p class="help-block">Here's some help text</p>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="appendedInput">Appended text</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInput" size="16" type="text" /><span class="add-on">.00</span>
								  </div>
								  <span class="help-inline">Here's more help text</span>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="appendedPrependedInput">Append and prepend</label>
								<div class="controls">
								  <div class="input-prepend input-append">
									<span class="add-on">$</span><input id="appendedPrependedInput" size="16" type="text" /><span class="add-on">.00</span>
								  </div>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="appendedInputButton">Append with button</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInputButton" size="16" type="text" /><button class="btn" type="button">Go!</button>
								  </div>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="appendedInputButtons">Two-button append</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInputButtons" size="16" type="text" /><button class="btn" type="button">Search</button><button class="btn" type="button">Options</button>
								  </div>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label">Checkboxes</label>
								<div class="controls">
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox1" value="option1" /> Option 1
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox2" value="option2" /> Option 2
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox3" value="option3" /> Option 3
								  </label>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label">File Upload</label>
								<div class="controls">
								  <input type="file" />
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label">Radio buttons</label>
								<div class="controls">
								  <label class="radio">
									<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="" />
									Option one is this and that—be sure to include why it's great
								  </label>
								  <div style="clear:both"></div>
								  <label class="radio">
									<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" />
									Option two can be something else and selecting it will deselect option one
								  </label>
								</div>
							  </div>
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						</form>
					</div>
				</div><!--/span-->

			</div><!--/row-->
    
					
			</div>
			<!-- end: Content -->
				
				</div><!--/fluid-row-->
				
	<div class="modal" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>商品详细信息</h3>
			</div>
			<div class="modal-body">
				<table class="table table-striped table-bordered bootstrap-datatable datatable">
					<thead>
					<tr>
						<th>商品型号</th>
						<th>商品颜色</th>
						<th>商品尺寸</th>
						<th>商品库存</th>
					</tr>
					</thead>
					<tbody id="productlist">
					</tbody>
					</table>
				<div id="myCarousel" class="carousel slide" style="width:270px;margin-left:100px">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>   
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner" id="piclist">
						
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div> 
			
			</div>
			<div class="modal-footer">
				<a href="#" class="btn btn-primary" data-dismiss="modal">关闭</a>
			</div>
		</div>

<%@ include file="footer.jsp" %>
<script src="${pageContext.request.contextPath}/behind_style/js/jquery.form.js"type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/behind_style/inputfile/js/fileinput.js"type="text/javascript"></script>
    
	<script>
	window.onload=function(){
		$("#showGoods").click();

		 $.ajax({
	            type : "post",
	            url : "${pageContext.request.contextPath}/type/typeList",
	            success : function(typelist) {
	            	 var options="";
	            	  $.each(typelist,function(index,type){
	            		  options=options+"<option value='"+type.type+"'>"+type.type+"</option>";
	            	  });
	            	  $("#type").append(options); 
	            }
			});
		 
		 $.ajax({
	            type : "post",
	            url : "${pageContext.request.contextPath}/type/sizeList",
	            success : function(sizelist) {
	            	 var options="";
	            	  $.each(sizelist,function(index,size){
	            		  options=options+"<option value='"+size.size+"'>"+size.size+"</option>";
	            	  });
	            	  $("#size").append(options); 
	            }
			});
	}	

	var goodsid=$("#showgoodsid");
	var goodsid1=$("#showgoodsid1");
	var goodsname=$("#showgoodsname");
	var goodsname1=$("#showgoodsname1");
    function addgoods(form) {
        $.ajax({
            type : "post",
            url : "${pageContext.request.contextPath}/goods/addGoods",
            data : $(form).serialize(),
            dataType:"json",
            success : function(goods) {
                    $("#success").show();
                    goodsid.val(goods.goodsid);
                    goodsname.val(goods.goodsname);
                    goodsid1.val(goods.goodsid);
                    goodsname1.val(goods.goodsname);
            },
          error:function(data){
        	  $("#errorDiv").show();
          }
        });
        return false;
    }
    
    function addproduct(form) {
        $.ajax({
            type : "post",
            url : "${pageContext.request.contextPath}/goods/addProduct",
            data : $(form).serialize(),
            success : function(data) {
                if (data == "yes") {
                    $("#success1").show();
                } else {
                    $("#errorDiv1").show();
                }
            }
        });
        return false;
    }
    
 
 	function uploadPic(){
		var options ={
			type:"post",
			url:"${pageContext.request.contextPath}/goods/updateGoodsShowPic?goodsid="+goodsid1.val(),
			success:function(msg){
				  $("#success2").show();
			},
			error:function(msg){
				 $("#errorDiv2").show();
			}
		};
		$("#jvForm").ajaxSubmit(options);
		
	}
 	

 	//初始化fileinput控件（第一次初始化）
 	function initFileInput(ctrlName, uploadUrl) { 
	 	 var control = $('#' + ctrlName); 
	 	 control.fileinput({
	 	 language: 'zh', //设置语言
	 	 uploadUrl: uploadUrl, //上传的地址
	 	 allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀
	 	 showUpload: true, //是否显示上传按钮
	 	 showCaption: false,//是否显示标题
	 	 browseClass: "btn btn-primary", //按钮样式 
	 	 previewFileIcon: "<i class='glyphicon glyphicon-king'></i>", 
	 	 });
 	}
 	initFileInput("testFile", "${pageContext.request.contextPath}/goods/addGoodsPic");
 	
 	function test(){
 		var id=$("#showgoodsid1").val();
 		$("#testFile").fileinput('refresh',{uploadUrl:"${pageContext.request.contextPath}/goods/addGoodsPic?goodsid="+id});
 	}
 
 	
	function showAllGoods(){
		var goodsidForselect=$("#goodsidForselect").val();
		$("#tbody").text("");
		if(goodsidForselect!=""){
			  $.ajax({
		            type : "post",
		            url : "${pageContext.request.contextPath}/goods/goodsList?goodsid="+goodsidForselect,
		            success : function(goodslist) {
		            	var tbody="";
		             $.each(goodslist,function(index,goods){
		            	var date= new Date(goods.createtime);
		            	 var mydate = date.getFullYear() + '/' + (date.getMonth() + 1) + '/' + date.getDate();
		            	var   tr="<tr><td>"+goods.goodsid+"</td><td >"+goods.goodsname+"</td><td >"+goods.type+"</td><td >"+goods.price+"</td><td >"+goods.goodsdescrib+"</td><td >"+goods.totalnum+"</td><td ><img src=${pageContext.request.contextPath}/pic/"+goods.goodspic+" class=img-thumbnail width=50px  height=50px alt=pic></td><td >"+ mydate+"</td><td ><a class='btn btn-success' data-toggle='modal' data-target='#myModal'onclick='showdetails("+goods.goodsid+")'><i class='icon-zoom-in'></i></a></td></tr>";   
						tbody=tbody+tr;
		             });
					$("#tbody").append(tbody); 
		            }
		        });
		}else{
			showpage(1);
			$("#totalpage").text(totalPage);
			$("#curr").text(curr);
		}
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
		$("#tbody").text("");
		  $.ajax({
	            type : "post",
	            url : "${pageContext.request.contextPath  }/goods/findGoodsByPage?currentPage="+currentPage,
	            success : function(page) {
	            	var goodslist=page.goods;
	             	var tbody="";
	            	curr=page.currentPage;
	            	totalPage=page.totalPage;
	            	$("#totalpage").text(totalPage);
	            	$("#curr").text(curr);
	             $.each(goodslist,function(index,goods){
	            	var date= new Date(goods.createtime);
	            	 var mydate = date.getFullYear() + '/' + (date.getMonth() + 1) + '/' + date.getDate();
	            	var   tr="<tr><td>"+goods.goodsid+"</td><td >"+goods.goodsname+"</td><td >"+goods.type+"</td><td >"+goods.price+"</td><td >"+goods.goodsdescrib+"</td><td >"+goods.totalnum+"</td><td ><img src=${pageContext.request.contextPath}/pic/"+goods.goodspic+" class=img-thumbnail width=50px  height=50px alt=pic></td><td >"+ mydate+"</td><td ><a class='btn btn-success' data-toggle='modal' data-target='#myModal'onclick='showdetails(\""+goods.goodsid+"\")'><i class='icon-zoom-in'></i></a></td></tr>";   
					tbody=tbody+tr; 
	             });
	             $("#tbody").css("display","none");
				$("#tbody").append(tbody); 
				$("#tbody").fadeIn(500);
	            } 
	        });
	    }
	
	/* 显示每个货品的商品信息，尺寸颜色之类 */
	function showdetails(goodsid){
		$("#productlist").text("");
		  $.ajax({
	            type : "post",
	            url : "${pageContext.request.contextPath}/goods/productList?goodsid="+goodsid,
	            success : function(productlist) {
	            var tbody="";
	             $.each(productlist,function(index,product){
	            	var   tr="<tr><td>"+product.productid+"</td><td > <button style='background:"+product.color+";width:20px;height:20px' class='btn'></td><td >"+product.size+"</td><td>"+product.productnum+"</td></tr>";   
					tbody=tbody+tr;
	             });
				$("#productlist").append(tbody); 
	            }
	        });
		  
		  $("#piclist").text("");
		  $.ajax({
	            type : "post",
	            url : "${pageContext.request.contextPath}/goods/goodspicList?goodsid="+goodsid,
	            success : function(goodspicList) {
	            var img="<div class='item active'><img alt='还没有图片~~‘></div>";
	             $.each(goodspicList,function(index,pic){
	            	 if(index==0){
	            		 img="<div class='item active'><img alt='pic' src=${pageContext.request.contextPath}/pic/"+pic.picname+"></div>";
	            	 }else{
	            		 img=img+ "<div class='item '><img alt='pic' src=${pageContext.request.contextPath}/pic/"+pic.picname+"></div>";
	            	 }
	             });
				$("#piclist").append(img); 
	            }
	        });  	  
		 
	}
	</script>


</body>
</html>