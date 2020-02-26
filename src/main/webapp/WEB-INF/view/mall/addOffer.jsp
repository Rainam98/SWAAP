
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Add Offer</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/sweetalert.css">
	
	<!-- FlexDatalist -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.flexdatalist.min.css">

	<!-- Popover -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.popSelect.min.css">

	<!-- Select2 -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/select2.min.css">

	<!-- Timepicker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-timepicker.min.css">

	<!-- Touch Spin -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.bootstrap-touchspin.min.css">

	<!-- Colorpicker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-colorpicker.min.css">

	<!-- Datepicker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-datepicker.min.css">

	<!-- DateRangepicker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/daterangepicker.css">

	<!-- Color Picker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/color-switcher.min.css">
</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->

<jsp:include page="header.jsp"></jsp:include>
<!-- /.fixed-navbar -->


<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

	
	<!-- /.fixed-navbar -->

	
	<!-- /#notification-popup -->


	<!-- /#message-popup -->
	
	<!-- #color-switcher -->

	<div id="wrapper">
		<div class="main-content">
			<div class="row small-spacing">
				<div class="col-12">
					<div class="box-content">
					    <f:form data-toggle="validator" modelAttribute="offerVO" method="post" action="saveOffer">

						<h4 class="box-title">Add Offer</h4>
						<!-- /.box-title -->
						<div class="form-group">
                            <label for="category" class=" control-label">Select Type</label><br>
                            <input onclick="renderChanges(this);updateCategories();" type="radio" value="category"
                                   name="offType"
                                   id="category" required="true" checked="checked">
                            <label>Category</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <input onclick="renderChanges(this);updateSubCategories({value:'-1'});" type="radio"
                                   value="subCategory" name="offType"
                                   id="subCategory" required="true">
                            <label>Sub-Category</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <input onclick="renderChanges(this);updateProducts({value:'-1'});" type="radio"
                                   value="product" name="offType"
                                   id="product" required="true">
                            <label>Product</label>
                        </div>
                        <div class="form-group">
                            <f:hidden path="id"/>
                            <label for="offnme" class="control-label">Offer Name</label>
                            <f:input path="offerName" name="offnme" class="form-control" id="inputName"
                                     placeholder="Enter Offer Name" required="true"/>
                        </div>
                        <!-- /.box-title -->
                        <!-- /.dropdown js__dropdown -->
                        <div class="form-group" id="categorySection">
                            <label for="categoryName" name="scatnme" class="control-label">Category</label>
                            <div class="form-group margin-bottom-20">
                                <f:select class="form-control" path="categoryVO.id"
                                          placeholder="Select Category"
                                          id="selectCategoryOption">
                                    <f:option value="-1"> select category </f:option>
                                    <c:forEach items="${categoryList}" var="categoryVariable">
                                        <f:option
                                                value="${categoryVariable.id}">${categoryVariable.categoryName }</f:option>
                                    </c:forEach>
                                </f:select>
                            </div>
                        </div>
                        <div class="form-group" id="subCategorySection">
                            <label for="subCategoryName" name="scatnme" class="control-label">Sub-Category</label>
                            <div class="form-group margin-bottom-20">
                                <f:select class="form-control" path="subCategoryVO.id"
                                          placeholder="Select Sub-Category"
                                          id="selectSubCategoryOption">
                                    <f:option value="-1"> select sub-category </f:option>
                                    <%--<c:forEach items="${subCategoryList}" var="subCategoryVariable">
                                        <f:option
                                                value="${subCategoryVariable.id}">${subCategoryVariable.subCategoryName }</f:option>
                                    </c:forEach>--%>
                                </f:select>
                            </div>
                        </div>
                        <div class="form-group" id="productSection">
                            <label for="productName" name="pdtnme" class="control-label">Product</label>
                            <div class="form-group margin-bottom-20">
                                <f:select class="form-control" path="productVO.id" placeholder="Select Product"
                                          id="selectProductOption">
                                    <f:option value="-1"> select product </f:option>
                                    <%--<c:forEach items="${productList}" var="productVariable">
                                        <f:option
                                                value="${productVariable.id}">${productVariable.productName }</f:option>
                                    </c:forEach>--%>
                                </f:select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inp-type-1" class=" control-label">Discount %</label>
                            <f:input path="discountPercent" type="text" name="dis" class="form-control" id="inp-type-1"
                                     placeholder="Enter Discount value"/>
                        </div>
						<div class="form-group">
                            <label for="inp-type-1" class=" control-label">Offer Valid from</label>
                           <div class="input-daterange input-group" id="date-range">
												<f:input path="offerValidFrom" type="text" class="form-control" name="start"/>
												<span class="input-group-addon bg-primary text-white">to</span>
												<f:input path="offerValidTill" type="text" class="form-control" name="end"/>
											</div>
                            <!-- /.input-group -->
                        </div>
                       
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary waves-effect waves-light">Add Offer</button>
                        </div>
                    </f:form>
						</div>
					<!-- /.box-content -->
				</div>
				<!-- /.col-12 -->
			
			</div>
			<!-- /.row small-spacing -->		
			 <jsp:include page="footer.jsp"></jsp:include>
		</div>
		<!-- /.main-content -->
	</div><!--/#wrapper -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="assets/script/html5shiv.min.js"></script>
		<script src="assets/script/respond.min.js"></script>
	<![endif]-->
	<!-- 
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/customAjaxHandler.js"></script>
		<script>renderChanges({id: 'category'})</script>
		<script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/nprogress.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/sweetalert.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/waves.min.js"></script>
		<!-- Full Screen Plugin -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.fullscreen-min.js"></script>

		<!-- Flex Datalist -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.flexdatalist.min.js"></script>

		<!-- Popover -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.popSelect.min.js"></script>

		<!-- Select2 -->
		<script src="<%=request.getContextPath()%>/adminResources/js/select2.min.js"></script>

		<!-- Multi Select -->
		<script src="<%=request.getContextPath()%>/adminResources/js/multiselect.min.js"></script>

		<!-- Touch Spin -->
		<script src="<%=request.getContextPath()%>/adminResources/js/jquery.bootstrap-touchspin.min.js"></script>

		<!-- Timepicker -->
		<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-timepicker.min.js"></script>

		<!-- Colorpicker -->
		<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-colorpicker.min.js"></script>

		<!-- Datepicker -->
		<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-datepicker.min.js"></script>

		<!-- Moment -->
		<script src="<%=request.getContextPath()%>/adminResources/js/moment.js"></script>

		<!-- DateRangepicker -->
		<script src="<%=request.getContextPath()%>/adminResources/js/daterangepicker.js"></script>

		<!-- Maxlength -->
		<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-maxlength.min.js"></script>

		<!-- Demo Scripts -->
		<script src="<%=request.getContextPath()%>/adminResources/js/form.demo.min.js"></script>

		<script src="<%=request.getContextPath()%>/adminResources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/mycommon.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/color-switcher.min.js"></script>
	</body>
	</html>