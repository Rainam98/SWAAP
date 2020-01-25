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

	<title>Add Complain</title>

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

<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
				<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
					<f:form data-toggle="validator" action="insertComplain" modelAttribute="complainVO">
					<h1 class="page-title">ADD COMPLAIN</h1>
						<div class="form-group">
							<label for="inputName" class="control-label">Complain Subject: </label>
							<f:input path="complainSubject" class="form-control" id="inputName" placeholder="Enter complain subject" required="true"/>
						</div>
						
						<div class="form-group">
								<label for="inp-type-5" class="control-label">Complain Description: </label>
								<f:textarea path="complainDescription" class="form-control" id="inp-type-5" placeholder="Enter complain description"/><br>
						</div>
						<div class="form-group">
							<label for="exampleInputFile">Attach file: </label>
							<input type="file" id="exampleInputFile"><br>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
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