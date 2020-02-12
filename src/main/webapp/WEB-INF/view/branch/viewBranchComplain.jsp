<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>View Complain</title>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

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

	
	<!-- /#message-popup -->
	<div id="wrapper">
		<div class="main-content">
			<div class="row small-spacing">
				<div class="col-12">
					<div class="box-content">
						<h4 class="box-title">VIEW COMPLAIN</h4>
						<!-- /.box-title -->
						<!-- <div class="dropdown js__drop_down">
							<a href="#"
								class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
							<ul class="sub-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else there</a></li>
								<li class="split"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
							/.sub-menu
						</div> -->
						<!-- /.dropdown js__dropdown -->
						<table id="example"
							class="table table-striped table-bordered display"
							style="width: 100%">
							<thead>
								<tr>
									<th>Complain Id</th>
									<th>Complain Subject</th>
									<th>Complain Description</th>
									<th>Complain Date</th>
									<th>Reply</th>
									<th>Reply Date</th>
									<th>Complain Status</th>
								</tr>
							</thead>
							<tbody>
							
							<c:forEach var="i" items="${complainList}">
								<tr>
									<td>${i.id}</td>
									<td>${i.complainSubject}</td>
									<td>${i.complainDescription}</td>
									<td>${i.complainDate}</td>
									<td>${i.reply}</td>
									<td>${i.replyDate}</td>
									<td>${i.complainStatus}</td>
								</tr>
							</c:forEach>
								
							</tbody>
						</table>
					</div>
					<!-- /.box-content -->
				</div>
				</div>
				</div>
				</div>
				<!-- /.col-12 -->
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
		<script src="<%=request.getContextPath()%>/adminResources/js/popper.min"></script>
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