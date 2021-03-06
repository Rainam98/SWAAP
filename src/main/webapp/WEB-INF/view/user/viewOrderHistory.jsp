<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta charset="utf-8">
<title>Order History</title>
<meta name="description" content="Philos Template" />
<meta name="keywords"
	content="philos, WooCommerce, bootstrap, html template, philos template">
<meta name="author" content="philos" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

<!-- Favicone Icon -->
<!-- Favicone Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/userResources/imagefavicon.ico">
    <link rel="icon" type="img/png" href="<%=request.getContextPath()%>/userResources/image/favicon.png">
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/userResources/image/favicon.png">

    <!-- CSS -->
    <link href="<%=request.getContextPath()%>/userResources/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap css -->
    <link href="<%=request.getContextPath()%>/userResources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- fontawesome css -->
    <link href="<%=request.getContextPath()%>/userResources/css/animate.css" rel="stylesheet" type="text/css" />
    <!-- animate css -->
    <link href="<%=request.getContextPath()%>/userResources/css/style.css" rel="stylesheet" type="text/css" />
    <!-- template css -->
    <link href="<%=request.getContextPath()%>/userResources/css/settings-ver.5.3.1.css" rel="stylesheet" type="text/css" />
    <!-- Slider Revolution Css Setting -->
=======
	<meta charset="utf-8">
	<title>Order History</title>
	<meta name="description" content="Philos Template"/>
	<meta name="keywords" content="philos, WooCommerce, bootstrap, html template, philos template">
	<meta name="author" content="philos"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
	<!--[if IE]>
	<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

	<!-- Favicone Icon -->
	<link rel="shortcut icon" type="image/x-icon"
		  href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/userResources/imagefavicon.ico">
	<link rel="icon" type="img/png" href="<%=request.getContextPath()%>/userResources/image/favicon.png">
	<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/userResources/image/favicon.png">

	<!-- CSS -->
	<link href="<%=request.getContextPath()%>/userResources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<!-- bootstrap css -->
	<link href="<%=request.getContextPath()%>/userResources/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<!-- fontawesome css -->
	<link href="<%=request.getContextPath()%>/userResources/css/animate.css" rel="stylesheet" type="text/css"/>
	<!-- animate css -->
	<link href="<%=request.getContextPath()%>/userResources/css/style.css" rel="stylesheet" type="text/css"/>
	<!-- template css -->
	<link href="<%=request.getContextPath()%>/userResources/css/settings-ver.5.3.1.css" rel="stylesheet"
		  type="text/css"/>
	<!-- Slider Revolution Css Setting -->

	<!-- Slider Revolution Css Setting -->
>>>>>>> e585aaa4cda644e73accee1fd51dca4913c5313b

</head>
<body>

<% double total = 0;%>
<!-- Newsletter Popup ---------------------------------------------------->


<!-- End Newsletter Popup ------------------------------------------------>


	<!-- Sidebar Menu (Cart Menu) ------------------------------------------------>
	<jsp:include page="cartSlider.jsp"></jsp:include>
	<!--Overlay-->
	<div class="sidebar_overlay"></div>
	<!-- End Sidebar Menu (Cart Menu) -------------------------------------------->

	<!-- Search Overlay Menu ----------------------------------------------------->
	<section class="search-overlay-menu">
		<!-- Close Icon -->
		<a href="javascript:void(0)" class="search-overlay-close"></a>
		<!-- End Close Icon -->
		<div class="container">
			<!-- Search Form -->
			<form role="search" id="searchform" action="/search" method="get">
				<div class="search-icon-lg">
					<img
						src="<%=request.getContextPath()%>/userResources/image/search-icon-lg.png"
						alt="" />
				</div>
				<label class="h6 normal search-input-label" for="search-query">Enter
					keywords to Search Product</label> <input value="" name="q" type="search"
					placeholder="Search..." />
				<button type="submit">
					<img
						src="<%=request.getContextPath()%>/userResources/image/search-lg-go-icon.png"
						alt="" />
				</button>
			</form>
			<!-- End Search Form -->

		</div>
	</section>
	<!-- End Search Overlay Menu ------------------------------------------------>

	<!--==========================================-->
	<!-- wrapper -->
	<!--==========================================-->
	<div class="wraper">
		<!-- Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- End Header -->

		<!-- Page Content Wraper -->
		<div class="page-content-wraper">
			<!-- Bread Crumb -->
			<!-- <section class="breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="breadcrumb-link">
                            <a href="#">Home</a>
                            <span>Cart</span>
                        </nav>
                    </div>
                </div>
            </div>
        </section> -->
			<!-- Bread Crumb -->

			<!-- Page Content -->
			<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
			<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
			<section class="content-page">
				<div class="container mb-80">
					<div class="row">
						<div class="col-sm-12">
							<article class="post-8">
								<form action="saveCart">
								<div class="cart-product-table-wrap responsive-table">
									<table>
										<thead>
											<tr>
												<th class="product-thumbnail"></th>
												<th class="product-name">Order ID</th>
												<th class="product-price">Purchase  Date</th>
												<th class="product-subtotal">Total Amount Paid</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${orderList}" var="orderVariable">
                                            <tr class="product-${orderVariable.id}">
                                                <td class="product-remove"><a href="orderDetail?orderId=${orderVariable.id }">View</a></td>

                                                       

                                                <td class="product-name">${orderVariable.id }</td>
                                                <td class="product-name">${orderVariable.purchaseDate }</td>

                                                <td class="product-subtotal"><span
                                                        class="product-price-sub_totle amount"> <span
                                                        class="currency-sign">Rs.</span>
													<span
                                                            id="cart-${orderVariable.id}"
															class="sub-totals">${orderVariable.totalAmount }</span>
													</span>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
									<div class="row cart-actions">
										<div class="col-md-6 text-right">
											<a href="index" class="view-cart btn btn-md btn-gray">Continue Shopping</a>
										</div>
									</div>
									
								</form>
							</article>
						</div>
					</div>
				</div>
			</section>
			<!-- End Page Content -->

		</div>
		<!-- End Page Content Wraper -->

		<!-- Footer Section -------------->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- End Footer Section -------------->

	</div>
<!-- End wrapper =============================-->

<!--==========================================-->
<!-- JAVASCRIPT -->
<!--==========================================-->

<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/jquery.min.js"></script>
<<<<<<< HEAD
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/jquery-ui.js"></script>
    <!-- jquery library js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/modernizr.js"></script>
    <!--modernizr Js-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/revolution.extension.layeranimation.min.js"></script>
    <!--Slider Revolution Js File-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/tether.min.js"></script>
    <!--Bootstrap tooltips require Tether (Tether Js)-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
    <!-- bootstrap js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/owl.carousel.js"></script>
    <!-- OWL carousel js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
    <!-- Slick Slider js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/plugins-all.js"></script>
    <!-- Plugins All js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/custom.js"></script>
	<!-- custom js -->
	<!-- end jquery -->
=======
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/jquery-ui.js"></script>
<!-- jquery library js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/modernizr.js"></script>
<!--modernizr Js-->
<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.navigation.min.js"></script>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.parallax.min.js"></script>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/revolution.extension.layeranimation.min.js"></script>
<!--Slider Revolution Js File-->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/tether.min.js"></script>
<!--Bootstrap tooltips require Tether (Tether Js)-->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
<!-- bootstrap js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/owl.carousel.js"></script>
<!-- OWL carousel js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
<!-- Slick Slider js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/plugins-all.js"></script>
<!-- Plugins All js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/custom.js"></script>
>>>>>>> e585aaa4cda644e73accee1fd51dca4913c5313b

</body>
</html>
