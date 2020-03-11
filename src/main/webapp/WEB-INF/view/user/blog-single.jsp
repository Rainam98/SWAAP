
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Philos - Responsive Ecommerce Html Template</title>
<meta name="description" content="Philos Template" />
<meta name="keywords"
	content="philos, WooCommerce, bootstrap, html template, philos template">
<meta name="author" content="philos" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

<!-- Favicone Icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/userResources/image/favicon.ico">
<link rel="icon" type="img/png" href="<%=request.getContextPath()%>/userResources/image/favicon.png">
<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/userResources/image/favicon.png">

<!-- CSS -->
<link href="<%=request.getContextPath()%>/userResources/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<!-- bootstrap css -->
<link href="<%=request.getContextPath()%>/userResources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- fontawesome css -->
<link href="<%=request.getContextPath()%>/userResources/css/animate.css" rel="stylesheet"
	type="text/css" />
<!-- animate css -->
<link href="<%=request.getContextPath()%>/userResources/css/style.css" rel="stylesheet"
	type="text/css" />
<!-- template css -->
<link href="<%=request.getContextPath()%>/userResources/css/settings-ver.5.3.1.css" rel="stylesheet"
	type="text/css" />
<!-- Slider Revolution Css Setting -->

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Newsletter Popup ---------------------------------------------------->
	<section id="nlpopup" data-expires="30" data-delay="10">
		<!--Close Button-->
		<a href="javascript:void(0)" class="nlpopup_close nlpopup_close_icon">
			<img src="<%=request.getContextPath()%>/userResources/image/close-icon-white.png"
			alt="Newsletter Close" />
		</a>
		<!--End Close Button-->

		<h3 class="mb-40">Join Our Mailing List</h3>
		<p class="black mb-20">
			But I must explain to you how all this mistaken<br /> idea of
			denouncing pleasure pain.
		</p>
		<form>
			<input class="input-md" name="footeremail"
				title="Enter Email Address.." placeholder="example@domain.com"
				type="email">
			<button class="btn btn-md btn-color">Subscribe</button>
		</form>
		<label class="mt-20"> Sign up For Exclusive Updates, New
			Arrivals<br /> And Insider-Only Discount.
		</label> <a class="nlpopup_close nlpopup_close_link mt-40">&#10006; Close</a>
	</section>


    <!-- End Newsletter Popup ------------------------------------------------>


	<!-- Sidebar Menu (Cart Menu) ------------------------------------------------>
	<section id="sidebar-right" class="sidebar-menu sidebar-right">
		<div class="cart-sidebar-wrap">

			<!-- Cart Headiing -->
			<div class="cart-widget-heading">
				<h4>Shopping Cart</h4>
				<!-- Close Icon -->
				<a href="javascript:void(0)" id="sidebar_close_icon"
					class="close-icon-white"></a>
				<!-- End Close Icon -->
			</div>
			<!-- End Cart Headiing -->

			<!-- Cart Product Content -->
			<div class="cart-widget-content">
				<div class="cart-widget-product ">

					<!-- Empty Cart -->
					<div class="cart-empty">
						<p>You have no items in your shopping cart.</p>
					</div>
					<!-- EndEmpty Cart -->

					<!-- Cart Products -->
					<ul class="cart-product-item">

						<!-- Item -->
						<li>
							<!--Item Image--> <a href="#" class="product-image"> <img
                                src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547554.jpg"
                                alt=""/></a> <!--Item Content-->
                            <div class="product-content">
                                <!-- Item Linkcollateral -->
                                <a class="product-link" href="#">Alpha Block Black Polo
                                    T-Shirt</a>

                                <!-- Item Cart Totle -->
                                <div class="cart-collateral">
                                    <span class="qty-cart">1</span>&nbsp;<span>&#215;</span>&nbsp;<span
                                        class="product-price-amount"><span
                                        class="currency-sign">&#8377;</span>399.00</span>
                                </div>

                                <!-- Item Remove Icon -->
                                <a class="product-remove" href="javascript:void(0)"><i
                                        class="fa fa-times-circle" aria-hidden="true"></i></a>
                            </div>
                        </li>

                        <!-- Item -->
                        <li>
							<!--Item Image--> <a href="#" class="product-image"> <img
                                src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547555.jpg"
                                alt=""/></a> <!--Item Content-->
                            <div class="product-content">
                                <!-- Item Linkcollateral -->
                                <a class="product-link" href="#">Red Printed Round Neck
                                    T-Shirt</a>

                                <!-- Item Cart Totle -->
                                <div class="cart-collateral">
                                    <span class="qty-cart">2</span>&nbsp;<span>&#215;</span>&nbsp;<span
                                        class="product-price-amount"><span
                                        class="currency-sign">&#8377;</span>299.00</span>
                                </div>

                                <!-- Item Remove Icon -->
                                <a class="product-remove" href="javascript:void(0)"><i
                                        class="fa fa-times-circle" aria-hidden="true"></i></a>
                            </div>
                        </li>

                    </ul>
                    <!-- End Cart Products -->

				</div>
			</div>
			<!-- End Cart Product Content -->

			<!-- Cart Footer -->
			<div class="cart-widget-footer">
				<div class="cart-footer-inner">

					<!-- Cart Total -->
					<h4 class="cart-total-hedding normal">
						<span>Total :</span><span class="cart-total-price">$698.00</span>
					</h4>
					<!-- Cart Total -->

					<!-- Cart Buttons -->
					<div class="cart-action-buttons">
						<a href="cart.html" class="view-cart btn btn-md btn-gray">View
							Cart</a> <a href="checkout.html"
							class="checkout btn btn-md btn-color">Checkout</a>
					</div>
					<!-- End Cart Buttons -->

				</div>
			</div>
			<!-- Cart Footer -->
		</div>
	</section>
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
					<img src="<%=request.getContextPath()%>/userResources/image/search-icon-lg.png" alt="" />
				</div>
				<label class="h6 normal search-input-label" for="search-query">Enter
					keywords to Search Product</label> <input value="" name="q" type="search"
					placeholder="Search..." />
				<button type="submit">
					<img src="<%=request.getContextPath()%>/userResources/image/search-lg-go-icon.png" alt="" />
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

		<!-- End Header -->

		<!-- Page Content Wraper -->
		<div class="page-content-wraper">
			<!-- Bread Crumb -->
			<section class="breadcrumb">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<nav class="breadcrumb-link">
								<a href="#">Home</a> <span>Blog Single</span>
							</nav>
						</div>
					</div>
				</div>
			</section>
			<!-- Bread Crumb -->

			<!-- Page Content -->
			<section class="content-page">
				<div class="container">
					<div class="row">
						<!-- Blog Content -->
						<div class="col-md-9 blog-single style-1">
							<div class="blog-box">
								<div class="blog-img-wrap">
									<img src="<%=request.getContextPath()%>/userResources/image/blog/blog_01.jpg" alt="philos" />
								</div>
								<div class="blog-box-content">
									<div class="blog-box-content-inner">
										<h4 class="blog-title">
											<a href="blog-single.html">Fresh review of coming trends
												for Summer '15</a>
										</h4>
										<p class="info">
											<span>by <a href="#">Philos Team</a></span><span>29
												Jan 2017</span>
										</p>
										<div class="blog-description-content">
											<p>You can remember what your childhood bedroom is like,
												right? That is your imagination doing that. You know the
												sound that your feet make when you walk across gravel don't
												you? You can imagine it, but you are not hearing it in your
												ears, are you? Just imagine these things as best as you can.</p>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit, eiusmod tempor incididunt ut labore. Lorem ipsum dolor
												sit amet, consectetur adipiscing aptent taciti sociosqu ad
												litora torquent.</p>
										</div>
										<p class="info">
											<span>Tags: <a href="#">Fashion</a>,&nbsp;<a href="#">Blog</a>,&nbsp;<a
												href="#">Model</a>,&nbsp;<a href="#">Vintage</a>,&nbsp;<a
												href="#">Offer</a></span>
										</p>
									</div>
								</div>
								<hr class="mb-30" />
								<div class="comments">
									<h6 class="review-title">
										Comments posted <span class="comment-count">(2)</span>
									</h6>
									<!--<p class="review-blank">There are no reviews yet.</p>-->
									<ul class="commentlist">
										<li id="comment-101" class="comment-101"><img
											src="<%=request.getContextPath()%>/userResources/image/avatar.jpg" class="avatar"
											alt="author" />
											<div class="comment-text">
												<div class="star-rating" itemprop="reviewRating"
													itemscope="" itemtype="http://schema.org/Rating"
													title="Rated 4 out of 5">
													<span style="width: 100%"></span>
												</div>
												<p class="meta">
													<strong itemprop="author">James Koster</strong>
													&nbsp;&mdash;&nbsp;
													<time itemprop="datePublished" datetime="">April 25,
														2016</time>
												</p>
												<div class="description" itemprop="description">
													<p>Wow Amazing!</p>
												</div>
											</div></li>
										<li id="102" class="comment-102"><img
											src="<%=request.getContextPath()%>/userResources/image/avatar.jpg" class="avatar"
											alt="author" />
											<div class="comment-text">
												<div class="star-rating" itemprop="reviewRating"
													itemscope="" itemtype="http://schema.org/Rating"
													title="Rated 4 out of 5">
													<span style="width: 80%"></span>
												</div>
												<p class="meta">
													<strong itemprop="author">Michel</strong>
													&nbsp;&mdash;&nbsp;
													<time itemprop="datePublished" datetime="">April 14,
														2016</time>
												</p>
												<div class="description" itemprop="description">
													<p>Wow Special!</p>
												</div>
											</div></li>
										<li id="comment-103" class="comment-103"><img
											src="<%=request.getContextPath()%>/userResources/image/avatar.jpg" class="avatar"
											alt="author" />
											<div class="comment-text">
												<div class="star-rating" itemprop="reviewRating"
													itemscope="" itemtype="http://schema.org/Rating"
													title="Rated 4 out of 5">
													<span style="width: 60%"></span>
												</div>
												<p class="meta">
													<em>Your comment is awaiting approval</em>
													<!-- <strong itemprop="author">Kerry</strong>
                                                    &nbsp;&mdash;&nbsp;
                                                    <time itemprop="datePublished" datetime="">march 19, 2016</time>-->
												</p>
												<div class="description" itemprop="description">
													<p>When an unknown printer took a galley!</p>
												</div>
											</div></li>
									</ul>
								</div>
								<hr class="mb-30 mt-45" />
								<div class="review-form-wrapper">
									<h6 class="review-title">Write a comment</h6>
									<form class="comment-form">
										<div class="form-field-wrapper">
											<label>Your Rating</label>
											<p class="stars">
												<span> <a class="star-1" href="#">1</a> <a
													class="star-2" href="#">2</a> <a class="star-3" href="#">3</a>
													<a class="star-4 active" href="#">4</a> <a class="star-5"
													href="#">5</a>
												</span>
											</p>
										</div>
										<div class="form-field-wrapper">
											<label>Your Review <span class="required">*</span></label>
											<textarea id="comment" class="form-full-width" name="comment"
												cols="45" rows="8" aria-required="true" required=""></textarea>
										</div>
										<div class="form-field-wrapper">
											<label>Name <span class="required">*</span></label> <input
												id="author" class="input-md form-full-width" name="author"
												value="" size="30" aria-required="true" required=""
												type="text">
										</div>
										<div class="form-field-wrapper">
											<label>Email <span class="required">*</span></label> <input
												id="email" class="input-md form-full-width" name="email"
												value="" size="30" aria-required="true" required=""
												type="email">
										</div>
										<div class="form-field-wrapper">
											<input name="submit" id="submit"
												class="submit btn btn-md btn-color" value="Submit"
												type="submit">
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- End Blog Content -->

						<!-- Sidebar -->
						<div class="sidebar-container col-md-3">

							<!-- Categories -->
							<div class="widget-sidebar">
								<h6 class="widget-title">Blog Categories</h6>
								<ul class="widget-content">
									<li><a href="#">All about Clothing</a></li>
									<li><a href="#">Make-up & Beauty</a></li>
									<li><a href="#">Accessories</a></li>
									<li><a href="#">Fashion Trends</a></li>
									<li><a href="sdsd">Haircuts & Hairstyles</a></li>
									<li><a href="sdsd">Blog</a></li>
									<li><a href="sdsd">About Us</a></li>
								</ul>
							</div>

							<!-- Recent Posts -->
							<div class="widget-sidebar widget-product">
								<h6 class="widget-title">Recent Posts</h6>
								<ul class="widget-content">

									<!--Item-->
									<li><a class="product-img" href="#"> <img
											src="<%=request.getContextPath()%>/userResources/image/blog/blog_01.jpg" alt="">
									</a>
										<div class="product-content">
											<a class="product-link" href="#">New Lunched Vintage
												Collaction</a> <span class="date-description">16 June
												2017</span>
										</div></li>

									<!--Item-->
									<li><a class="product-img" href="#"> <img
											src="<%=request.getContextPath()%>/userResources/image/blog/blog_03.jpg" alt="">
									</a>
										<div class="product-content">
											<a class="product-link" href="#">Fresh review of coming
												trends for Summer '15</a> <span class="date-description">04
												November 2017</span>
										</div></li>

									<!--Item-->
									<li><a class="product-img" href="#"> <img
											src="<%=request.getContextPath()%>/userResources/image/blog/blog_02.jpg" alt="">
									</a>
										<div class="product-content">
											<a class="product-link" href="#">New collection from
												Armiani 2013</a> <span class="date-description">24 March
												2017</span>
										</div></li>

								</ul>
							</div>


							<!-- Tag -->
							<div class="widget-sidebar widget-filter-tag">
								<h6 class="widget-title">Popular Tag</h6>
								<ul class="widget-content">
									<li><a href="#">Shirt</a></li>
									<li><a href="#">Bag</a></li>
									<li><a href="#">Vintage</a></li>
									<li><a href="#">Sweaters</a></li>
									<li><a href="#">t-shirt</a></li>
									<li><a href="#">white</a></li>
									<li><a href="#">Black</a></li>
									<li><a href="#">New</a></li>
									<li><a href="#">Popular</a></li>
								</ul>
							</div>


						</div>
						<!-- End Sidebar -->

					</div>
				</div>
			</section>
			<!-- End Page Content -->

		</div>
		<!-- End Page Content Wraper -->

		<!-- Footer Section -------------->
		<footer class="footer section-padding">
			<!-- Footer Info -->
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-12 col-sm-12 mb-sm-45">
						<div class="footer-block about-us-block">
							<img src="<%=request.getContextPath()%>/userResources/image/logo_white.png" width="125" alt="">
							<p>Gumbo beet greens corn soko endive gum gourd. Parsley
								allot courgette tatsoi pea sprouts fava bean soluta nobis est
								ses eligendi optio.</p>
							<ul class="footer-social-icon list-none-ib">
								<li><a href="http://facebook.com/" target="_blank"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="https://twitter.com/" target="_blank"><i
										class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="https://www.pinterest.com/" target="_blank"><i
										class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
								<li><a href="https://plus.google.com/" target="_blank"><i
										class="fa fa-google-plus" aria-hidden="true"></i></a></li>
								<li><a href="https://www.instagram.com/" target="_blank"><i
										class="fa fa-instagram" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4 mb-sm-45">
						<div class="footer-block information-block">
							<h6>Information</h6>
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Delivery Information</a></li>
								<li><a href="#">Discount</a></li>
								<li><a href="#">Latest News</a></li>
								<li><a href="#">Our Sitemap</a></li>
								<li><a href="#">Terms &amp; Condition</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4 mb-sm-45">
						<div class="footer-block links-block">
							<h6>Our Links</h6>
							<ul>
								<li><a href="#">Brands</a></li>
								<li><a href="#">Gift Vouchers</a></li>
								<li><a href="#">Affiliates</a></li>
								<li><a href="#">Special Event</a></li>
								<li><a href="#">Retunrs</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 col-sm-4 mb-sm-45">
						<div class="footer-block extra-block">
							<h6>Extra</h6>
							<ul>
								<li><a href="#">New Collection</a></li>
								<li><a href="#">Women Dresses</a></li>
								<li><a href="#">Kids Collection</a></li>
								<li><a href="#">Mens Collection</a></li>
								<li><a href="#">Custom Service</a></li>
								<li><a href="#">Shipping policy</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-12 col-sm-12">
						<div class="footer-block contact-block">
							<h6>Contact</h6>
							<ul>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i>1
									Wintergreen Dr. Huntley <br> IL 60142, Usa</li>
								<li><i class="fa fa-envelope" aria-hidden="true"></i><a
									href="mailto:info@sky.com">info@sky.com</a></li>
								<li><i class="fa fa-phone" aria-hidden="true"></i>(013)
									456789</li>
								<li><i class="fa fa-fax" aria-hidden="true"></i>89567989</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- End Footer Info -->

			<!-- Footer Newsletter -->
			<div class="container">
				<div class="footer-newsletter">
					<h4>Subscribe Newsletter</h4>
					<form class="footer-newslettr-inner">
						<input class="input-md fancy" name="footeremail"
							title="Enter Email Address.." placeholder="Enter Email Address.."
							type="text">
						<button class="btn btn-md btn-color fancy">Sing Up</button>
					</form>
				</div>
			</div>
			<!-- End Footer Newsletter -->

			<!-- Footer Copyright -->
			<div class="container">
				<div class="copyrights">
					<p class="copyright">
						&copy; Created by <a href="http://nileforest.com/" target="_blank">NileForest</a>.
						Philos Responsive Woocommerce Theme 2017
					</p>
					<p class="payment">
						<img src="<%=request.getContextPath()%>/userResources/image/payment_logos.png" alt="payment">
					</p>
				</div>
			</div>
			<!-- End Footer Copyright -->
		</footer>
		<!-- End Footer Section -------------->

	</div>
	<!-- End wrapper =============================-->

	<!--==========================================-->
	<!-- JAVASCRIPT -->
	<!--==========================================-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/jquery.min.js"></script>
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
	<!-- carousel js -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
	<!-- Slick Slider js -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/plugins-all.js"></script>
	<!-- Plugins All js -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/custom.js"></script>
	<!-- custom js -->
	<!-- end jquery -->

</body>
</html>
