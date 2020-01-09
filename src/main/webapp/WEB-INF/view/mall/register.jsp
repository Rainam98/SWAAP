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

	<title>Home</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

</head>

<body>

<div id="single-wrapper">
	<form action="#" class="frm-single">
		<div class="inside">
			<div class="title"><strong>Ninja</strong>Admin</div>
			<!-- /.title -->
			<div class="frm-title">Register</div>
			<!-- /.frm-title -->
			<div class="frm-input"><input type="email" placeholder="Email" class="frm-inp"><i class="fa fa-envelope frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><input type="text" placeholder="Username" class="frm-inp"><i class="fa fa-user frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><input type="password" placeholder="Password" class="frm-inp"><i class="fa fa-lock frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="clearfix margin-bottom-20">
				<div class="checkbox primary"><input type="checkbox" id="accept"><label for="accept">I accept Terms and Conditions</label></div>
				<!-- /.checkbox -->
			</div>
			<!-- /.clearfix -->
			<button type="submit" class="frm-submit">Register<i class="fa fa-arrow-circle-right"></i></button>
			<div class="row small-spacing">
				<div class="col-md-12">
					<div class="txt-login-with txt-center">or register with</div>
					<!-- /.txt-login-with -->
				</div>
				<!-- /.col-md-12 -->
				<div class="col-md-6"><button type="button" class="btn btn-sm btn-icon btn-icon-left btn-social-with-text btn-facebook text-white waves-effect waves-light"><i class="ico fa fa-facebook"></i><span>Facebook</span></button></div>
				<!-- /.col-md-6 -->
				<div class="col-md-6"><button type="button" class="btn btn-sm btn-icon btn-icon-left btn-social-with-text btn-google-plus text-white waves-effect waves-light"><i class="ico fa fa-google-plus"></i>Google+</button></div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
			<a href="login.html" class="a-link"><i class="fa fa-sign-in"></i>Already have account? Login.</a>
			<div class="frm-footer">NinjaAdmin © 2016.</div>
			<!-- /.footer -->
		</div>
		<!-- .inside -->
	</form>
	<!-- /.frm-single -->
</div><!--/#single-wrapper -->

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
	<script src="<%=request.getContextPath()%>/adminResources/js/nprogress.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/waves.min.js"></script>

	<script src="<%=request.getContextPath()%>/adminResources/js/main.min.js"></script>
<script src="<%=request.getContextPath()%>/adminResources/js/mycommon.js"></script>
</body>
</html>