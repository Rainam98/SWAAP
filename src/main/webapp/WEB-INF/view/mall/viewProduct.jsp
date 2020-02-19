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

	<title>View Product</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/sweetalert.css">
	
	<!-- Data Tables -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/responsive.bootstrap.min.css">

	<!-- Color Picker -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/color-switcher.min.css">
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- /.main-menu -->

	<jsp:include page="header.jsp"></jsp:include>
	<!-- /.fixed-navbar -->

	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	<div id="wrapper">
		<div class="main-content">
			<div class="row small-spacing">
				<div class="col-12">
					<div class="box-content">
						<h4 class="box-title">View Product</h4>
						<!-- /.box-title -->
						<div class="dropdown js__drop_down">
							<a href="#" class="dropdown-icon fas fa-ellipsis-v js__drop_down_button"></a>
							<ul class="sub-menu">
								<li><a href="addProduct">Add Product</a></li>
							</ul>
							<!-- /.sub-menu -->
						</div>
						<!-- /.dropdown js__dropdown -->
						<table id="example" class="table table-striped table-bordered display" style="width:100% ; height:100%">
							<thead>
								<tr>
									<th>ID</th>
									<th>Branch Name</th>
									<th>Category Name</th>
									<th>Sub-Category Name</th>
									<th>Product Name</th>
									<th>Product Weight</th>
									<th>Product Price</th>
									<th>Product Quantity</th>
									<th>Delete</th>
									<th >Update</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>ID</th>
									<th>Branch Name</th>
									<th>Category Name</th>
									<th>Sub-Category Name</th>
									<th>Product Name</th>
									<th>Product Weight</th>
									<th>Product Price</th>
									<th>Product Quantity</th>
									<th>Delete</th>
									<th>Update</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${productList}" var="productVariable">
									<tr>
										<td>${productVariable.id}</td>
										<td>${productVariable.branchVO.branchName}</td>
										<td>${productVariable.categoryVO.categoryName}</td>
										<td>${productVariable.subCategoryVO.subCategoryName}</td>
										<td>${productVariable.productName}</td>
										<td>${productVariable.productWeight}</td>
										<td>${productVariable.productPrice}</td>
										<td>${productVariable.productQuantity}</td>
										<td><a  href="deleteSubCategory?findById=${productVariable.id}"><i class="menu-icon fa fa-trash-alt" aria-hidden="true"></i></a></td>
										<td><a  href="updateSubCategory?findById=${productVariable.id}"><i class="menu-icon fa fa-edit" aria-hidden="true"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.box-content -->
				</div>
				
				</div>
				<!-- /.col-12 -->
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
			<!-- /.row small-spacing -->		
		</div>
		<!-- /.main-content -->
	</div><!--/#wrapper -->
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

	<!-- Data Tables -->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/responsive.bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/datatables.demo.min.js"></script>

		<script src="<%=request.getContextPath()%>/adminResources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/mycommon.js"></script>
		<script src="<%=request.getContextPath()%>/adminResources/js/color-switcher.min.js"></script>
	</body>
	</html>