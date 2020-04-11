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

	<script src="adminResources/js/customValidator.js"></script>
	<title>SWAAP - Register</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/waves.min.css">

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
			<div class="frm-input"><f:input onSubmit="return validateEmail()" path="name" placeholder="Name"
											class="frm-inp" required="true"/><i class="fa fa-user-circle frm-ico"></i>
			</div>
			<!-- /.frm-input -->
			<div class="frm-input radio"><f:radiobutton path="gender" value="Male" name="underwear" id="underwear1"
														class="frm-inp" required="true"/><label
					for="underwear1">Male</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<f:radiobutton
					path="gender" value="Female" name="underwear" id="underwear2" class="frm-inp"
					required="true"/><label for="underwear2">Female</label></div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:input path="mobileNumber" id="contact-number" onkeyup="validatePhone()"
											placeholder="Contact Number" class="frm-inp"
											required="true"/><i class="fa fa-phone frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:input onkeyup="validateEmail()" id="username" path="loginVO.username"
											placeholder="Username" class="frm-inp"
											data-error="Bruh, that email address is invalid" required="true"/><i
					class="fa fa-user frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><f:password path="loginVO.password" onkeyup="validatePassword()"
											   placeholder="Password" data-minlength="8"
											   id="password" class="frm-inp" required="true"/><i
					class="fa fa-lock frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><input type="password" onkeyup="comparePassword()" placeholder="Confirm Password"
										  id="confirm-password"
										  class="frm-inp" required="true"/><i class="fa fa-lock frm-ico"></i></div>
			<!-- /.frm-input -->
			<!-- /.clearfix -->
			<button type="submit" class="frm-submit">Register<i class="fa fa-arrow-circle-right"></i></button>

			<!-- /.row -->
			<a href="login" class="a-link"><i class="fa fa-sign-in"></i>Already have account? Login.</a>
			<div class="frm-footer">SWAAP © 2020.</div>
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