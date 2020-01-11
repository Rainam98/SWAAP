<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Add Products</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/sweetalert.css">
	
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
<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
					<f:form data-toggle="validator" modelAttribute="productVO" method="post" action="saveProduct">
					<h1 class="page-title">Add Product</h1>
					<div class="form-group">
						<label for="categoryName" name="brn" class="control-label">Branch Location</label>
						<div class="form-group margin-bottom-20">
								<f:select class="form-control" path="branchVO.id" placeholder="Select Branch">
									<c:forEach items="${branchList}" var="branchVariable">
										<f:option value="${branchVariable.id}">${branchVariable.branchName }</f:option>
									</c:forEach>
								</f:select>									
						</div>
					</div>
					<div class="form-group">
						<label for="subCategoryName" name="scatnme" class="control-label">Category</label>
						<div class="form-group margin-bottom-20">
								<f:select class="form-control" path="categoryVO.id" placeholder="Select Category">
									<c:forEach items="${categoryList}" var="categoryVariable">
										<f:option value="${categoryVariable.id}">${categoryVariable.categoryName }</f:option>
									</c:forEach>
								</f:select>									
						</div>
					</div>
					<div class="form-group">
						<label for="subCategoryName" name="scatnme" class="control-label">Sub-Category</label>
						<div class="form-group margin-bottom-20">
								<f:select class="form-control" path="subCategoryVO.id" placeholder="Select Sub-Category">
									<c:forEach items="${subCategoryList}" var="subCategoryVariable">
										<f:option value="${subCategoryVariable.id}">${subCategoryVariable.subCategoryName }</f:option>
									</c:forEach>
								</f:select>									
						</div>
					</div>
					
					
					<div class="form-group">
							<f:hidden path="id"/>
							<label for="subCategoryName" class="control-label">Product Name</label>
							<f:input path="productName" name="scatnme" class="form-control" id="inputName" placeholder="Enter Product Name" required="true"/>
						</div>
						<div class="form-group">
							<label for="productDescription" class="control-label">Product Description</label>
							<f:textarea path="productDescription" name="scatnme" class="form-control" id="inp-type-5" placeholder="Enter Product Description" required="true"/>
						</div>
						<div class="form-group">
							<label for="productWeight" class="control-label">Product Weight</label>
							<f:input path="productWeight" name="scatnme" class="form-control" id="inputName" placeholder="Enter Product Weight" required="true"/>
						</div>
						<div class="form-group">
							<label for="productPrice" class="control-label">Product Price</label>
							<f:input path="productPrice" name="scatnme" class="form-control" id="inputName" placeholder="Enter Product Price" required="true"/>
						</div>
					<div class="form-group">
								<label for="exampleInputFile">Barcode Image Input</label><br>
								<input type="file" name="img" id="exampleInputFile">
								<p class="help-block">Add Barcode Image</p>
							</div>
					
						
						<div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Add Product</button>
						</div>
						</f:form>
				</div>
			
				</div>
				<jsp:include page="footer.jsp"></jsp:include>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->		
	</div>
	<!-- /.main-content -->
<!--/#wrapper -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/adminResources/js/html5shiv.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/respond.min.js"></script>
	<![endif]-->
	<!-- 
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/nprogress.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/sweetalert.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/waves.min.js"></script>
	<!-- Full Screen Plugin -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.fullscreen-min.js"></script>

	<!-- Validator -->
	<script src="<%=request.getContextPath()%>/adminResources/js/validator.min.js"></script>

	<script src="<%=request.getContextPath()%>/adminResources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/mycommon.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/color-switcher.min.js"></script>
</body>
</html>