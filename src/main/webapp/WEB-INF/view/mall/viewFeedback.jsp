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

<title>Datatables - SpaceX Template</title>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- Main Styles -->
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

	<div id="notification-popup" class="notice-popup js__toggle"
		data-space="75">
		<h2 class="popup-title">Your Notifications</h2>
		<!-- /.popup-title -->
		<div class="content">
			<ul class="notice-list">
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-1.jpg" alt=""></span> <span
						class="name">John Doe</span> <span class="desc">Like your
							post: “Contact Form 7 Multi-Step”</span> <span class="time">10
							min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-2.jpg" alt=""></span> <span
						class="name">Anna William</span> <span class="desc">Like
							your post: “Facebook Messenger”</span> <span class="time">15 min</span>
				</a></li>
				<li><a href="#"> <span class="avatar bg-warning"><i
							class="fa fa-warning"></i></span> <span class="name">Update
							Status</span> <span class="desc">Failed to get available update
							data. To ensure the please contact us.</span> <span class="time">30
							min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-1.jpg" alt=""></span> <span
						class="name">Jennifer</span> <span class="desc">Like your
							post: “Contact Form 7 Multi-Step”</span> <span class="time">45
							min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-6.jpg" alt=""></span> <span
						class="name">Michael Zenaty</span> <span class="desc">Like
							your post: “Contact Form 7 Multi-Step”</span> <span class="time">50
							min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-4.jpg" alt=""></span> <span
						class="name">Simon</span> <span class="desc">Like your
							post: “Facebook Messenger”</span> <span class="time">1 hour</span>
				</a></li>
				<li><a href="#"> <span class="avatar bg-violet"><i
							class="fa fa-flag"></i></span> <span class="name">Account Contact
							Change</span> <span class="desc">A contact detail associated with
							your account has been changed.</span> <span class="time">2 hours</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-7.jpg" alt=""></span> <span
						class="name">Helen 987</span> <span class="desc">Like your
							post: “Facebook Messenger”</span> <span class="time">Yesterday</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/imagep090--
						0
						:;p;pg" alt=""></span>
						<span class="name">Denise Jenny</span> <span class="desc">Like
							your post: “Contact Form 7 Multi-Step”</span> <span class="time">Oct,
							28</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-8.jpg" alt=""></span> <span
						class="name">Thomas William</span> <span class="desc">Like
							your post: “Facebook Messenger”</span> <span class="time">Oct, 27</span>
				</a></li>
			</ul>
			<!-- /.notice-list -->
			<a href="#" class="notice-read-more">See more messages <i
				class="fa fa-angle-down"></i></a>
		</div>
		<!-- /.content -->
	</div>
	<!-- /#notification-popup -->

	<div id="message-popup" class="notice-popup js__toggle" data-space="75">
		<h2 class="popup-title">
			Recent Messages<a href="#" class="float-right text-danger">New
				message</a>
		</h2>
		<!-- /.popup-title -->
		<div class="content">
			<ul class="notice-list">
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image9avatar-sm-1.jpg" alt=""></span> <span
						class="name">John Doe</span> <span class="desc">Amet odio
							neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">10 min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-3.jpg" alt=""></span> <span
						class="name">Harry Halen</span> <span class="desc">Amet
							odio neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">15 min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-4.jpg" alt=""></span> <span
						class="name">Thomas Taylor</span> <span class="desc">Amet
							odio neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">30 min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-1.jpg" alt=""></span> <span
						class="name">Jennifer</span> <span class="desc">Amet odio
							neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">45 min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-5.jpg" alt=""></span> <span
						class="name">Helen Candy</span> <span class="desc">Amet
							odio neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">45 min</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-2.jpg" alt=""></span> <span
						class="name">Anna Cavan</span> <span class="desc">Amet odio
							neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">1 hour ago</span>
				</a></li>
				<li><a href="#"> <span class="avatar bg-success"><i
							class="fa fa-user"></i></span> <span class="name">Jenny Betty</span> <span
						class="desc">Amet odio neque nobis consequuntur consequatur
							a quae, impedit facere repellat voluptates.</span> <span class="time">1
							day ago</span>
				</a></li>
				<li><a href="#"> <span class="avatar"><img
							src="<%=request.getContextPath() %>/adminResource/image/avatar-5.jpg" alt=""></span> <span
						class="name">Denise Peterson</span> <span class="desc">Amet
							odio neque nobis consequuntur consequatur a quae, impedit facere
							repellat voluptates.</span> <span class="time">1 year ago</span>
				</a></li>
			</ul>
			<!-- /.notice-list -->
			<a href="#" class="notice-read-more">See more messages <i
				class="fa fa-angle-down"></i></a>
		</div>
		<!-- /.content -->
	</div>
	<!-- /#message-popup -->
	<div id="wrapper">
		<div class="main-content">
			<div class="row small-spacing">
				<div class="col-12">
					<div class="box-content">
						<h4 class="box-title">Default</h4>
						<!-- /.box-title -->
						<div class="dropdown js__drop_down">
							<a href="#"
								class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
							<ul class="sub-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else there</a></li>
								<li class="split"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
							<!-- /.sub-menu -->
						</div>
						<!-- /.dropdown js__dropdown -->
						<table id="example"
							class="table table-striped table-bordered display"
							style="width: 100%">
							<thead>
								<tr>
									<th>Feedback Id</th>
									<th>Feedback</th>
									<th>Login Id</th>									
								</tr>
							</thead>
							<tbody> 
 							<c:forEach var="i" items="${feedbackList}">
								<tr>
									<td>${i.id}</td>
									<td>${i.feedback}</td>
									<td>${i.loginVO.loginId}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.box-content -->
				</div>
				<!-- /.col-12 -->
		<!--/#wrapper -->
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