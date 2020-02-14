<div class="main-menu">
	<header class="header">
		<a href="index.html" class="logo">SWAAP Team</a>
		<button type="button" class="button-close fa fa-times js__menu_close"></button>
		<div class="user">
			<a href="#" class="avatar"><img src="<%=request.getContextPath()%>/adminResources/image/avatar.png" alt=""><span class="status online"></span></a>
			<h5 class="name"><a href="profile.html">Ritu Shah</a></h5>
			<h5 class="position">Designer</h5>
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
				<li>
					<a class="waves-effect" href="index"><i class="menu-icon fa fa-home"></i><span>Dashboard</span></a>
				</li>
				<li>
					<a class="waves-effect" href="viewUser"><i class="menu-icon far fa-user" aria-hidden="true"></i><span>Manage User</span></a>
					
					<!-- /.sub-menu js__content -->
				</li>
				<li >
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fas fa-location-arrow" aria-hidden="true"></i><span>Manage State</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addState">Add State</a></li>
						<li><a href="viewState">View State</a></li>
					</ul>
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fas fa-map-marker" aria-hidden="true"></i><span>Manage City</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addCity">Add City</a></li>
						<li><a href="viewCity">View City</a></li>
					</ul>
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fas fa-code-branch" aria-hidden="true"></i><span>Manage Branch</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addBranch">Add Branch</a></li>
						<li><a href="viewBranch">View Branch</a></li>
					</ul>
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fa fa-shopping-bag"></i><span>Manage Category</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addCategory">Add Category</a></li>
						<li><a href="viewCategory">View Category</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fa fa-shopping-basket"></i><span>Manage Sub-Category</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addSubCategory">Add Sub-Category</a></li>
						<li><a href="viewSubCategory">View Sub-Category</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fas fa-briefcase"></i><span>Manage Product</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addProduct">Add Product</a></li>
						<li><a href="viewProduct">View Product</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon fas fa-gift"></i><span>Manage Offers</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="addOffer">Add Offers</a></li>
						<li><a href="viewOffer">View Offers</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon far fa-check-square"></i><span>Manage Checklist</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="viewChecklistMall">View Checklist History</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon far fa-comments"></i><span>Manage Complain</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="viewMallComplain">View Complain</a></li>
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="viewFeedback"><i class="menu-icon far fa-smile" aria-hidden="true"></i><span>Feedback</span></a>
					<!-- /.sub-menu js__content -->
				</li>
			</ul>
			<!-- /.menu js__accordion -->
		
		</div>
		<!-- /.navigation -->
	</div>
	<!-- /.content -->
</div>