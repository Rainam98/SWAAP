<div class="main-menu">
	<header class="header">
		<a href="index.html" class="logo">NinjaTeam</a>
		<button type="button" class="button-close fa fa-times js__menu_close"></button>
		<div class="user">
			<a href="#" class="avatar"><img src="<%=request.getContextPath()%>/adminResources/image/avatar.png" alt=""><span class="status online"></span></a>
			<h5 class="name"><a href="profile.html">Emily Stanley</a></h5>
			<h5 class="position">Administrator</h5>
			<!-- /.name -->
			<div class="control-wrap js__drop_down">
				<i class="fa fa-caret-down js__drop_down_button"></i>
				<div class="control-list">
					<div class="control-item"><a href="profile.html"><i class="fa fa-user"></i> Profile</a></div>
					<div class="control-item"><a href="#"><i class="fas fa-cog"></i> Settings</a></div>
					<div class="control-item"><a href="#"><i class="fa fa-sign-out"></i> Log out</a></div>
				</div>
				<!-- /.control-list -->
			</div>
			<!-- /.control-wrap -->
		</div>
		<!-- /.user -->
	</header>
	<!-- /.header -->
	<div class="content">

		<div class="navigation">
			<h5 class="title">Navigation</h5>
			<!-- /.title -->
			<ul class="menu js__accordion">
				<li class="current">
					<a class="waves-effect" href="index.html"><i class="menu-icon fa fa-home"></i><span>Dashboard</span></a>
				</li>
				<li>
					<a class="waves-effect" href="#"><i class="menu-icon fa fa-user" aria-hidden="true"></i><span>Login</span></a>
				</li>
				<li>
					<a class="waves-effect" href="index.html"><i class="menu-icon fa fa-list-alt" aria-hidden="true"></i><span>Categories</span></a>
				</li>
				<li>
					<a class="waves-effect" href="index.html"><i class="menu-icon fa fa-briefcase" aria-hidden="true"></i><span>Products</span></a>
				</li>
				<li>
					<a class="waves-effect" href="index.html"><i class="menu-icon fa fa-gift" aria-hidden="true"></i><span>Offers</span></a>
				</li>
				<li>
					<a class="waves-effect" href="index.html"><i class="menu-icon fa fa-clipboard-list" aria-hidden="true"></i><span>Checklist</span></a>
				</li>
				<li>
					<a class="waves-effect" href="index.html"><i class="menu-icon fa fa-smile" aria-hidden="true"></i><span>Feedback</span></a>
				</li>
				
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fa fa-comments" aria-hidden="true"></i><span>Manage Complaint</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="icons-font-awesome-icons.html">Add Complaint</a></li>
						<li><a href="icons-fontello.html">View Complaint</a></li>
					
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				
			</ul>
			<!-- /.menu js__accordion -->
		</div>
		<!-- /.navigation -->
	</div>
	<!-- /.content -->
</div>