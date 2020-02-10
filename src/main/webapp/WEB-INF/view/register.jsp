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
	<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/custom.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="adminResources/css/waves.min.css">

</head>

<body>

<div id="single-wrapper">
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<f:form class="frm-single" data-toggle="validator" action="insert" modelAttribute="registerVO" method="post">
		<div class="inside">
			<div class="title"><strong>SWAAP</strong></div>
			<!-- /.title -->
			<div class="frm-title">Register</div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:input paath="" placeholder="Name" class="frm-inp" required="true"/><i class="fa fa-user-circle frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input radio"><f:radiobutton path="" value="Male" name="underwear" id="underwear1" class="frm-inp" required="true"/><label for="underwear1">Male</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<f:radiobutton path="" value="Female" name="underwear" id="underwear2" class="frm-inp" required="true"/><label for="underwear2">Female</label></div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:input path=""  placeholder="Contact Number" class="frm-inp" required="true"/><i class="fa fa-phone frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:input path=""  placeholder="Username" class="frm-inp" data-error="Bruh, that email address is invalid" required="true"/><i class="fa fa-user frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:password path="" placeholder="Password" data-minlength="8" id="inputPassword" class="frm-inp" required="true"/><i class="fa fa-lock frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><input type="password" placeholder="Confirm Password" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" class="frm-inp" required="true"/><i class="fa fa-lock frm-ico"></i></div>
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
	</f:form>
	<!-- /.frm-single -->
</div><!--/#single-wrapper -->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="adminResources/js/html5shiv.min.js"></script>
		<script src="adminResources/js/respond.min.js"></script>
	<![endif]-->
	<!-- 
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="adminResources/js/jquery.min.js"></script>
	<script src="adminResources/js/modernizr.min.js"></script>
<script src="adminResources/js/popper.min.js"></script>
	<script src="adminResources/js/bootstrap.min.js"></script>
	<script src="adminResources/js/nprogress.js"></script>
	<script src="adminResources/js/waves.min.js"></script>

	<script src="adminResources/js/main.min.js"></script>
<script src="adminResources/js/mycommon.js"></script>
</body>
</html>