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

	<title>Home - Ninja Admin Template</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/custom.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="adminResources/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="adminResources/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="adminResources/css/sweetalert.css">
	
	<!-- Percent Circle -->
	<link rel="stylesheet" href="adminResources/css/percircle.css">

	<!-- Chartist Chart -->
	<link rel="stylesheet" href="adminResources/css/chartist.min.css">

	<!-- FullCalendar -->
	<link rel="stylesheet" href="adminResources/css/fullcalendar.min.css">
	<link rel="stylesheet" href="adminResources/css/fullcalendar.print.css" media='print'>

	<!-- Color Picker -->
	<link rel="stylesheet" href="adminResources/css/color-switcher.min.css">
</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->



<jsp:include page="header.jsp"></jsp:include>



<!-- /.fixed-navbar -->

<div id="notification-popup" class="notice-popup js__toggle" data-space="75">
	<h2 class="popup-title">Your Notifications</h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-2.jpg" alt=""></span>
					<span class="name">Anna William</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-warning"><i class="fa fa-warning"></i></span>
					<span class="name">Update Status</span>
					<span class="desc">Failed to get available update data. To ensure the please contact us.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-6.jpg" alt=""></span>
					<span class="name">Michael Zenaty</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">50 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Simon</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">1 hour</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-violet"><i class="fa fa-flag"></i></span>
					<span class="name">Account Contact Change</span>
					<span class="desc">A contact detail associated with your account has been changed.</span>
					<span class="time">2 hours</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-7.jpg" alt=""></span>
					<span class="name">Helen 987</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">Yesterday</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-2.jpg" alt=""></span>
					<span class="name">Denise Jenny</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">Oct, 28</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-8.jpg" alt=""></span>
					<span class="name">Thomas William</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">Oct, 27</span>
				</a>
			</li>
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#notification-popup -->

<div id="message-popup" class="notice-popup js__toggle" data-space="75">
	<h2 class="popup-title">Recent Messages<a href="#" class="float-right text-danger">New message</a></h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-3.jpg" alt=""></span>
					<span class="name">Harry Halen</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Thomas Taylor</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-sm-5.jpg" alt=""></span>
					<span class="name">Helen Candy</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-2.jpg" alt=""></span>
					<span class="name">Anna Cavan</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 hour ago</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-success"><i class="fa fa-user"></i></span>
					<span class="name">Jenny Betty</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 day ago</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResources/image/avatar-5.jpg" alt=""></span>
					<span class="name">Denise Peterson</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 year ago</span>
				</a>
			</li>
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#message-popup -->
<div id="color-switcher">
	<div id="color-switcher-button" class="btn-switcher">
		<div class="inside waves-effect waves-circle waves-light">
			<i class="ico fas fa-cog"></i>
		</div>
		<!-- .inside waves-effect waves-circle -->
	</div>
	<!-- .btn-switcher -->
	<div id="color-switcher-content" class="content">
		<a href="#" data-color="red" class="item js__change_color"><span class="color" style="background-color: #f44336;"></span><span class="text">Red</span></a>
		<a href="#" data-color="violet" class="item js__change_color"><span class="color" style="background-color: #673ab7;"></span><span class="text">Violet</span></a>
		<a href="#" data-color="dark-blue" class="item js__change_color"><span class="color" style="background-color: #3f51b5;"></span><span class="text">Dark Blue</span></a>
		<a href="#" data-color="blue" class="item js__change_color active"><span class="color" style="background-color: #304ffe;"></span><span class="text">Blue</span></a>
		<a href="#" data-color="light-blue" class="item js__change_color"><span class="color" style="background-color: #2196f3;"></span><span class="text">Light Blue</span></a>
		<a href="#" data-color="green" class="item js__change_color"><span class="color" style="background-color: #4caf50;"></span><span class="text">Green</span></a>
		<a href="#" data-color="yellow" class="item js__change_color"><span class="color" style="background-color: #ffc107;"></span><span class="text">Yellow</span></a>
		<a href="#" data-color="orange" class="item js__change_color"><span class="color" style="background-color: #ff5722;"></span><span class="text">Orange</span></a>
		<a href="#" data-color="chocolate" class="item js__change_color"><span class="color" style="background-color: #795548;"></span><span class="text">Chocolate</span></a>
		<a href="#" data-color="dark-green" class="item js__change_color"><span class="color" style="background-color: #263238;"></span><span class="text">Dark Green</span></a>
		<span id="color-reset" class="btn-restore-default js__restore_default">Reset</span>
	</div>
	<!-- /.content -->
</div>
<!-- #color-switcher -->

<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
					<h4 class="box-title">Activity</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div id="smil-animation-index-chartist-chart" class="chartist-chart" style="height: 320px"></div>
					<!-- /#smil-animation-chartist-chart.chartist-chart -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content">
					<h4 class="box-title">Projects</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat">
						<div class="percent bg-warning"><i class="fas fa-chart-line"></i>53%</div>
						<!-- /.percent -->
						<div class="right-content">
							<h2 class="counter">837</h2>
							<!-- /.counter -->
							<p class="text">Projects</p>
							<!-- /.text -->
						</div>
						<!-- /.right-content -->
						<div class="clear"></div>
						<!-- /.clear -->
						<div class="process-bar">
							<div class="bar-bg bg-warning"></div>
							<div class="bar js__width bg-warning" data-width="70%"></div>
							<!-- /.bar js__width bg-success -->
						</div>
						<!-- /.process-bar -->
					</div>
					<!-- /.content widget-stat -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content">
					<h4 class="box-title">Memory usage</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat-chart">
						<div class="c100 p76 small blue js__circle">
							<span>76%</span>
							<div class="slice">
								<div class="bar"></div>
								<div class="fill"></div>
							</div>
						</div>
						<!-- /.c100 p58 -->
						<div class="right-content">
							<h2 class="counter">804</h2>
							<!-- /.counter -->
							<p class="text">Disk usage</p>
							<!-- /.text -->
						</div>
						<!-- /.right-content -->
					</div>
					<!-- /.content -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content">
					<h4 class="box-title">Visitor Analytics</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat">
						<div class="percent bg-danger"><i class="fas fa-chart-line"></i>+40%</div>
						<!-- /.percent -->
						<div class="right-content">
							<h2 class="counter">976</h2>
							<!-- /.counter -->
							<p class="text">Visitors today</p>
							<!-- /.text -->
						</div>
						<!-- /.right-content -->
						<div class="clear"></div>
						<!-- /.clear -->
						<div class="process-bar">
							<div class="bar-bg bg-danger"></div>
							<div class="bar js__width bg-danger" data-width="70%"></div>
							<!-- /.bar js__width bg-success -->
						</div>
						<!-- /.process-bar -->
					</div>
					<!-- /.content widget-stat -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content">
					<h4 class="box-title">Monthly Sales</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat-chart">
						<div class="c100 p94 small green js__circle">
							<span>94%</span>
							<div class="slice">
								<div class="bar"></div>
								<div class="fill"></div>
							</div>
						</div>
						<!-- /.c100 p58 -->
						<div class="right-content">
							<h2 class="counter">3922</h2>
							<!-- /.counter -->
							<p class="text">Sales</p>
							<!-- /.text -->
						</div>
						<!-- /.right-content -->
					</div>
					<!-- /.content -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title">Statistics</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content">
						<div id="chart-2" class="js__chart" data-type="column" data-chart="'Year'/'Statistics' | '2010'/75 | '2011'/42 | '2012'/75 | '2013'/38 | '2014'/19 | '2015'/93 "></div>
					</div>
					<!-- /.content -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-lg-12 -->

			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title">Total Projects</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content">
						<div id="chart-3" class="js__chart" data-type="curve" data-chart="'Year'/'Desktop'/'Mobile' | '2008'/53/0 | '2009'/35/73 | '2010'/89/14 | '2011'/50/50 | '2012'/86/37 | '2013'/47/89 | '2014'/75/50 | '2015'/100/70 "></div>
					</div>
					<!-- /.content -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-lg-12 -->

			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title">Daily Sales</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content">
						<div id="chart-1" class="js__chart" data-type="donut" data-chart="'Type'/'Number' | 'Normal Sales'/50 | 'In-Site Sales'/20 | 'Mail-Order Sales'/20"></div>
					</div>
					<!-- /.content -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-12 -->

			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="adminResources/image/avatar-1.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Betty Simmons</h4>
						<!-- /.name -->
						<p><a href="/cdn-cgi/l/email-protection#9af2fff6f6f5daf4f3f4f0fbeefffbf7b4f5e8fd"><span class="__cf_email__" data-cfemail="b1d9d4dddddef1dfd8dfdbd0c5d4d0dc9fdec3d6">[email&#160;protected]</span></a></p>
						<div class="text-warning small">Manager</div>
						<!-- /.text-warning -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="adminResources/image/avatar-2.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Michael Zenaty</h4>
						<!-- /.name -->
						<p><a href="/cdn-cgi/l/email-protection#0a626f6666654a646364606b7e6f6b672465786d"><span class="__cf_email__" data-cfemail="d8b0bdb4b4b798b6b1b6b2b9acbdb9b5f6b7aabf">[email&#160;protected]</span></a></p>
						<div class="text-custom small">Support</div>
						<!-- /.text-custom -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="adminResources/image/avatar-3.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Denise Peterson</h4>
						<!-- /.name -->
						<p><a href="/cdn-cgi/l/email-protection#8ce4e9e0e0e3cce2e5e2e6edf8e9ede1a2e3feeb"><span class="__cf_email__" data-cfemail="660e030a0a0926080f080c071203070b48091401">[email&#160;protected]</span></a></p>
						<div class="text-success small">Designer</div>
						<!-- /.text-warning -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-3 col-lg-6 col-12">
				<div class="box-content user-info">
					<div class="avatar"><img src="adminResources/image/avatar-4.jpg" alt=""></div>
					<!-- /.avatar -->
					<div class="right-content">
						<h4 class="name">Pamela Wood</h4>
						<!-- /.name -->
						<p><a href="/cdn-cgi/l/email-protection#d8b0bdb4b4b798b6b1b6b2b9acbdb9b5f6b7aabf"><span class="__cf_email__" data-cfemail="a2cac7cececde2cccbccc8c3d6c7c3cf8ccdd0c5">[email&#160;protected]</span></a></p>
						<div class="text-danger small">Developer</div>
						<!-- /.text-custom -->
					</div>
					<!-- /.right-content -->
				</div>
				<!-- /.user-info -->
			</div>
			<!-- /.col-xl-3 col-lg-6 col-12 -->
			<div class="col-xl-6 col-12">
				<div class="box-content">
					<div id="calendar-widget"></div>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->
			<div class="col-xl-6 col-12">
				<div class="box-content">
					<h4 class="box-title">Purchases</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
						<ul class="sub-menu">
							<li><a href="#">Product</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else there</a></li>
							<li class="split"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- /.sub-menu -->
					</div>
					<!-- /.dropdown js__dropdown -->
					<div class="table-responsive table-purchases">
						<table class="table table-striped margin-bottom-10">
							<thead>
								<tr>
									<th style="width:40%;">Product</th>
									<th>Price</th>
									<th>Date</th>
									<th>State</th>
									<th style="width:5%;"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Amaza Themes</td>
									<td>$71</td>
									<td>Nov 12,2016</td>
									<td class="text-success">Completed</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Macbook</td>
									<td>$142</td>
									<td>Nov 10,2016</td>
									<td class="text-danger">Cancelled</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Samsung TV</td>
									<td>$200</td>
									<td>Nov 01,2016</td>
									<td class="text-warning">Pending</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Ninja Admin</td>
									<td>$200</td>
									<td>Oct 28,2016</td>
									<td class="text-warning">Pending</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Galaxy Note 5</td>
									<td>$200</td>
									<td>Oct 28,2016</td>
									<td class="text-success">Completed</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>CleanUp Themes</td>
									<td>$71</td>
									<td>Oct 22,2016</td>
									<td class="text-success">Completed</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Facebook WP Plugin</td>
									<td>$10</td>
									<td>Oct 15,2016</td>
									<td class="text-success">Completed</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Iphone 7</td>
									<td>$100</td>
									<td>Oct 12,2016</td>
									<td class="text-warning">Pending</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Nova House</td>
									<td>$100</td>
									<td>Oct 12,2016</td>
									<td class="text-warning">Pending</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
								<tr>
									<td>Repair Cars</td>
									<td>$35</td>
									<td>Oct 12,2016</td>
									<td class="text-warning">Pending</td>
									<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
								</tr>
							</tbody>
						</table>
						<!-- /.table -->
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->
		</div>
		<!-- /.row -->		
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="adminResources/js/html5shiv.min.js"></script>
		<script src="adminResources/js/respond.min.js"></script>
	<![endif]-->
	<!-- 
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script data-cfasync="false" src="adminResources/js/email-decode.min.js"></script><script src="adminResources/js/jquery.min.js"></script>
	<script src="adminResources/js/modernizr.min.js"></script>
<script src="adminResources/js/popper.min.js"></script>
	<script src="adminResources/js/bootstrap.min.js"></script>
	<script src="adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="adminResources/js/nprogress.js"></script>
	<script src="adminResources/js/sweetalert.min.js"></script>
	<script src="adminResources/js/waves.min.js"></script>
	<!-- Full Screen Plugin -->
	<script src="adminResources/js/jquery.fullscreen-min.js"></script>

	<!-- Percent Circle -->
	<script src="adminResources/js/percircle.js"></script>

	<!-- Google Chart -->
	<script src="adminResources/js/loader.js"></script>

	<!-- Chartist Chart -->
	<script src="adminResources/js/chartist.min.js"></script>
	<script src="adminResources/js/jquery.chartist.init.min.js"></script>

	<!-- FullCalendar -->
	<script src="adminResources/js/moment.js"></script>
	<script src="adminResources/js/fullcalendar.min.js"></script>
	<script src="adminResources/js/fullcalendar.init.js"></script>

	<script src="adminResources/js/main.min.js"></script>
<script src="adminResources/js/mycommon.js"></script>
	<script src="adminResources/js/color-switcher.min.js"></script>
</body>
</html>