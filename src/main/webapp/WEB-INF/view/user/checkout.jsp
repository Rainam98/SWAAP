
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Philos - Responsive Ecommerce Html Template</title>
    <meta name="description" content="Philos Template" />
    <meta name="keywords" content="philos, WooCommerce, bootstrap, html template, philos template">
    <meta name="author" content="philos" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- Favicone Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/userResources/image/favicon.ico">
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

</head>
<body>

    <!-- Newsletter Popup ---------------------------------------------------->
    <section id="nlpopup" data-expires="30" data-delay="10">
        <!--Close Button-->
        <a href="javascript:void(0)" class="nlpopup_close nlpopup_close_icon">
            <img src="<%=request.getContextPath()%>/userResources/image/close-icon-white.png" alt="Newsletter Close" /></a>
        <!--End Close Button-->

        <h3 class="mb-40">Join Our Mailing List </h3>
        <p class="black mb-20">
            But I must explain to you how all this mistaken<br />
            idea of denouncing pleasure pain.
        </p>
        <form>
            <input class="input-md" name="footeremail" title="Enter Email Address.." placeholder="example@domain.com" type="email">
            <button class="btn btn-md btn-color">Subscribe</button>
        </form>
        <label class="mt-20">
            Sign up For Exclusive Updates, New Arrivals<br />
            And Insider-Only Discount.</label>
        <a class="nlpopup_close nlpopup_close_link mt-40">&#10006; Close</a>
    </section>
    <!-- Overlay -->
    <div id="nlpopup_overlay"></div>
    <!-- End Newsletter Popup ------------------------------------------------>


    <!-- Sidebar Menu (Cart Menu) ------------------------------------------------>
    <section id="sidebar-right" class="sidebar-menu sidebar-right">
        <div class="cart-sidebar-wrap">

            <!-- Cart Headiing -->
            <div class="cart-widget-heading">
                <h4>Shopping Cart</h4>
                <!-- Close Icon -->
                <a href="javascript:void(0)" id="sidebar_close_icon" class="close-icon-white"></a>
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
                            <!--Item Image-->
                            <a href="#" class="product-image">
                                <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547554.jpg" alt="" /></a>

                            <!--Item Content-->
                            <div class="product-content">
                                <!-- Item Linkcollateral -->
                                <a class="product-link" href="#">Alpha Block Black Polo T-Shirt</a>

                                <!-- Item Cart Totle -->
                                <div class="cart-collateral">
                                    <span class="qty-cart">1</span>&nbsp;<span>&#215;</span>&nbsp;<span class="product-price-amount"><span class="currency-sign">$</span>399.00</span>
                                </div>

                                <!-- Item Remove Icon -->
                                <a class="product-remove" href="javascript:void(0)"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
                            </div>
                        </li>

                        <!-- Item -->
                        <li>
                            <!--Item Image-->
                            <a href="#" class="product-image">
                                <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547555.jpg" alt="" /></a>

                            <!--Item Content-->
                            <div class="product-content">
                                <!-- Item Linkcollateral -->
                                <a class="product-link" href="#">Red Printed Round Neck T-Shirt</a>

                                <!-- Item Cart Totle -->
                                <div class="cart-collateral">
                                    <span class="qty-cart">2</span>&nbsp;<span>&#215;</span>&nbsp;<span class="product-price-amount"><span class="currency-sign">$</span>299.00</span>
                                </div>

                                <!-- Item Remove Icon -->
                                <a class="product-remove" href="javascript:void(0)"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
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
                    <h4 class="cart-total-hedding normal"><span>Total :</span><span class="cart-total-price">$698.00</span></h4>
                    <!-- Cart Total -->

                    <!-- Cart Buttons -->
                    <div class="cart-action-buttons">
                        <a href="cart.html" class="view-cart btn btn-md btn-gray">View Cart</a>
                        <a href="checkout.html" class="checkout btn btn-md btn-color">Checkout</a>
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
                <label class="h6 normal search-input-label" for="search-query">Enter keywords to Search Product</label>
                <input value="" name="q" type="search" placeholder="Search..." />
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
        <header class="header">
            <!--Topbar-->
            <div class="header-topbar">
                <div class="header-topbar-inner">
                    <!--Topbar Left-->
                    <div class="topbar-left hidden-sm-down">
                        <div class="phone"><i class="fa fa-phone left" aria-hidden="true"></i>Customer Support : <b>+77 7565 348 576</b></div>
                    </div>
                    <!--End Topbar Left-->

                    <!--Topbar Right-->
                    <div class="topbar-right">
                        <ul class="list-none">
                            <li>
                                <a href="login-register.html"><i class="fa fa-lock left" aria-hidden="true"></i><span class="hidden-sm-down">Login</span></a>
                            </li>
                            <li class="dropdown-nav">
                                <a href="login-register.html"><i class="fa fa-user left" aria-hidden="true"></i><span class="hidden-sm-down">My Account</span><i class="fa fa-angle-down right" aria-hidden="true"></i></a>
                                <!--Dropdown-->
                                <div class="dropdown-menu">
                                    <ul>
                                        <li><a href="login-register.html">My Account</a></li>
                                        <li><a href="#">Order History</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">My Wishlist</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                    </ul>
                                    <span class="divider"></span>
                                    <ul>
                                        <li><a href="login-register.html"><i class="fa fa-lock left" aria-hidden="true"></i>Login</a></li>
                                        <li><a href="login-register.html"><i class="fa fa-user left" aria-hidden="true"></i>Create an Account</a></li>
                                    </ul>
                                </div>
                                <!--End Dropdown-->
                            </li>
                            <li class="dropdown-nav">
                                <a href="#">USD<i class="fa fa-angle-down right" aria-hidden="true"></i></a>
                                <!--Dropdown-->
                                <div class="dropdown-menu">
                                    <ul>
                                        <li><a href="#">USD</a></li>
                                        <li><a href="#">EUR</a></li>
                                        <li><a href="#">GBP</a></li>
                                        <li><a href="#">AUD</a></li>
                                    </ul>
                                </div>
                                <!--End Dropdown-->
                            </li>
                            <li>
                                <a href="about.html">About</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Topbar Right -->
                </div>
            </div>
            <!--End Topbart-->

            <!-- Header Container -->
            <div id="header-sticky" class="header-main">
                <div class="header-main-inner">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="index.html">
                            <img src="<%=request.getContextPath()%>/userResources/image/logo_black.png" alt="Philos" />
                        </a>
                    </div>
                    <!-- End Logo -->


                    <!-- Right Sidebar Nav -->
                    <div class="header-rightside-nav">
                        <!-- Login-Register Link -->
                        <div class="header-btn-link hidden-lg-down"><a href="#" class="btn btn-sm btn-color">Buy Now</a></div>
                        <!-- End Login-Register Link -->

                        <!-- Sidebar Icon -->
                        <div class="sidebar-icon-nav">
                            <ul class="list-none-ib">
                                <!-- Search-->
                                <li><a id="search-overlay-menu-btn"><i aria-hidden="true" class="fa fa-search"></i></a></li>

                                <!-- Whishlist-->
                                <li><a class="js_whishlist-btn"><i aria-hidden="true" class="fa fa-heart"></i><span class="countTip">10</span></a></li>

                                <!-- Cart-->
                                <li><a id="sidebar_toggle_btn">
                                    <div class="cart-icon">
                                        <i aria-hidden="true" class="fa fa-shopping-bag"></i>
                                    </div>

                                    <div class="cart-title">
                                        <span class="cart-count">2</span>
                                        /
                                    <span class="cart-price strong">$698.00</span>
                                    </div>
                                </a></li>
                            </ul>
                        </div>
                        <!-- End Sidebar Icon -->
                    </div>
                    <!-- End Right Sidebar Nav -->


                    <!-- Navigation Menu -->
                    <nav class="navigation-menu">
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>
                                <a href="shop_grid.html">Man</a>
                                <!-- Drodown Menu ------->
                                <ul class="nav-dropdown js-nav-dropdown">
                                    <li class="container">
                                        <ul class="row">
                                            <!--Grid 1-->
                                            <li class="nav-dropdown-grid">
                                                <h6>New In</h6>
                                                <ul>
                                                    <li><a href="#">New In Clothing</a></li>
                                                    <li><a href="#">New In Shoes<span class="new-label">New</span></a></li>
                                                    <li><a href="#">New In Bags</a></li>
                                                    <li><a href="#">New In Watches</a></li>
                                                    <li><a href="#">New In Accesories</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 2-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Clothing</h6>
                                                <ul>
                                                    <li><a href="#">Polos & Tees</a></li>
                                                    <li><a href="#">Casual Shirts</a></li>
                                                    <li><a href="#">Jeans</a></li>
                                                    <li><a href="#">Casual Trousers</a></li>
                                                    <li><a href="#">Formal Shirts<span class="sale-label">Sale</span></a></li>
                                                    <li><a href="#">Formal Trousers</a></li>
                                                    <li><a href="#">Suits & Blazers</a></li>
                                                    <li><a href="#">Winter Jackets</a></li>
                                                    <li><a href="#">Track wear</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 3-->
                                            <li class="nav-dropdown-grid">
                                                <h6>ACCESSORIES</h6>
                                                <ul>
                                                    <li><a href="#">Mens Jewellery</a></li>
                                                    <li><a href="#">Bag</a></li>
                                                    <li><a href="#">Sunglasses</a></li>
                                                    <li><a href="#">Watches</a></li>
                                                    <li><a href="#">Hair Care</a></li>
                                                    <li><a href="#">Ties & Cufflinks</a></li>
                                                    <li><a href="#">Perfume</a></li>
                                                    <li><a href="#">Belt</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 4-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Brand</h6>
                                                <ul>
                                                    <li><a href="#">Analog</a></li>
                                                    <li><a href="#">Chronograph</a></li>
                                                    <li><a href="#">Digital</a></li>
                                                    <li><a href="#">Watch Cases</a></li>
                                                    <li><a href="#">Samsung</a></li>
                                                    <li><a href="#">Apple</a></li>
                                                    <li><a href="#">Hitachi</a></li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                                <!-- End Drodown Menu -->
                            </li>
                            <li>
                                <a href="shop_grid.html">Women</a>
                                <!-- Drodown Menu ------->
                                <ul class="nav-dropdown js-nav-dropdown">
                                    <li class="container">
                                        <ul class="row">
                                            <!--Grid 1-->
                                            <li class="nav-dropdown-grid">
                                                <h6>New In</h6>
                                                <ul>
                                                    <li><a href="#">New In Clothing</a></li>
                                                    <li><a href="#">New In Shoes</a></li>
                                                    <li><a href="#">New In Bags</a></li>
                                                    <li><a href="#">New In Watches</a></li>
                                                    <li><a href="#">Sweaters</a></li>
                                                    <li><a href="#">Winter Shrugs</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 2-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Clothing</h6>
                                                <ul>
                                                    <li><a href="#">Tops , tees & shirts</a></li>
                                                    <li><a href="#">Dresses & Jumpsuits</a></li>
                                                    <li><a href="#">Trousers & Jeans</a></li>
                                                    <li><a href="#">Leggings & Jeggings</a></li>
                                                    <li><a href="#">Capris,Shorts & Skirts</a></li>
                                                    <li><a href="#">Winter Jackets</a></li>
                                                    <li><a href="#">Clothing Accessories</a></li>
                                                    <li><a href="#">Sweaters</a></li>
                                                    <li><a href="#">Winter Shrugs</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 3-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Brand</h6>
                                                <ul>
                                                    <li><a href="#">A&C Signature</a></li>
                                                    <li><a href="#">Angry Birds</a></li>
                                                    <li><a href="#">Macadamia</a></li>
                                                    <li><a href="#">Miller & Schweizer</a></li>
                                                    <li><a href="#">Stylet</a></li>
                                                    <li><a href="#">Van Heusen</a></li>
                                                    <li><a href="#">Wrangler</a></li>
                                                    <li><a href="#">Wills Lifestyle</a></li>
                                                    <li><a href="#">X'Pose</a></li>
                                                </ul>
                                            </li>
                                            <li class="nav-dropdown-grid">
                                                <a href="#" class="sub-banner">
                                                    <img src="<%=request.getContextPath()%>/userResources/image/banner/banner_115145.jpg" alt="" /></a>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                                <!-- End Drodown Menu -->
                            </li>
                            <li>
                                <a href="shop_grid.html">Kids</a>
                                <!-- Drodown Menu ------->
                                <ul class="nav-dropdown js-nav-dropdown">
                                    <li class="container">
                                        <ul class="row">
                                            <!--Grid 1-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Kid's</h6>
                                                <ul>
                                                    <li><a href="#">Tops & Tunics</a></li>
                                                    <li><a href="#">Shorts & Capris</a></li>
                                                    <li><a href="#">Twin Sets</a></li>
                                                    <li><a href="#">Jeans & Trousers</a></li>
                                                    <li><a href="#">Leggings & Jeggings</a></li>
                                                    <li><a href="#">Skirts</a></li>
                                                    <li><a href="#">Jumpsuits</a></li>
                                                    <li><a href="#">Casual Dresses</a></li>
                                                    <li><a href="#">Ethnic Wear</a></li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                                <!-- End Drodown Menu -->
                            </li>
                            <li>
                                <a href="shop_grid.html">Brand</a>
                                <!-- Drodown Menu ------->
                                <ul class="nav-dropdown js-nav-dropdown">
                                    <li class="container">
                                        <ul class="row">
                                            <!--Grid 1-->
                                            <li class="nav-dropdown-grid">
                                                <ul>
                                                    <li><a href="#">A&C Signature</a></li>
                                                    <li><a href="#">Angry Birds</a></li>
                                                    <li><a href="#">Macadamia</a></li>
                                                    <li><a href="#">Miller & Schweizer</a></li>
                                                    <li><a href="#">Stylet</a></li>
                                                    <li><a href="#">Van Heusen</a></li>
                                                    <li><a href="#">Wrangler</a></li>
                                                    <li><a href="#">Wills Lifestyle</a></li>
                                                    <li><a href="#">X'Pose</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 2-->
                                            <li class="nav-dropdown-grid">
                                                <ul>
                                                    <li><a href="#">Apple</a></li>
                                                    <li><a href="#">United State</a></li>
                                                    <li><a href="#">Google</a></li>
                                                    <li><a href="#">Coca-Cola</a></li>
                                                    <li><a href="#">Microsoft</a></li>
                                                    <li><a href="#">Samsung</a></li>
                                                    <li><a href="#">Apple</a></li>
                                                    <li><a href="#">Facebook</a></li>
                                                    <li><a href="#">Twitter</a></li>
                                                    <li><a href="#">Instagram</a></li>

                                                </ul>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                                <!-- End Drodown Menu -->
                            </li>
                            <li>
                                <a href="shop_grid.html">Accessories<span class="nav-label-sale"></span></a>
                            </li>
                            <li>
                                <a href="#">Pages</a>
                                <!-- Drodown Menu ------->
                                <ul class="nav-dropdown js-nav-dropdown">
                                    <li class="container">
                                        <ul class="row">

                                            <!--Grid 1-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Shop Page</h6>
                                                <ul>
                                                    <li><a href="shop_grid.html">Shop Grid - Sidebar Left</a></li>
                                                    <li><a href="shop_grid-sidebar_right.html">Shop Grid - Sidebar Right</a></li>
                                                    <li><a href="shop_grid-no_sidebar.html">Shop Grid - No Sidebar</a></li>
                                                    <li><a href="shop_list.html">Shop List - Sidebar Left</a></li>
                                                    <li><a href="shop_list-sidebar_right.html">Shop List - Sidebar Right</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 2-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Product Page</h6>
                                                <ul>
                                                    <li><a href="product_detail.html">Product Page - Default</a></li>
                                                    <li><a href="product_detail-with_sidebar.html">Product Page - With Sidebar</a></li>
                                                    <li><a href="cart.html">Cart Page</a></li>
                                                    <li><a href="checkout.html">Checkout Page</a></li>
                                                </ul>
                                            </li>
                                            <!--Grid 3-->
                                            <li class="nav-dropdown-grid">
                                                <h6>Extra Page</h6>
                                                <ul>
                                                    <li><a href="index.html">Home</a></li>
                                                    <li><a href="about.html">About Us</a></li>
                                                    <li><a href="contact.html">Contact Us</a></li>
                                                    <li><a href="portfolio.html">Portfolio</a></li>
                                                    <li><a href="portfolio-single.html">Portfolio Detail</a></li>

                                                </ul>
                                            </li>

                                            <!--Grid 1-->
                                            <li class="nav-dropdown-grid">
                                                <h6 class="white">Extra Page</h6>
                                                <ul>
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog-with_sidebar.html">Blog - With sidebar</a></li>
                                                    <li><a href="blog-single.html">Blog Detail</a></li>
                                                    <li><a href="login-register.html">Login & Register</a></li>
                                                </ul>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
                                <!-- End Drodown Menu -->
                            </li>
                        </ul>
                    </nav>
                    <!-- End Navigation Menu -->

                </div>
            </div>
            <!-- End Header Container -->
        </header>
        <!-- End Header -->

        <!-- Page Content Wraper -->
        <div class="page-content-wraper">
            <!-- Bread Crumb -->
            <section class="breadcrumb">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <nav class="breadcrumb-link">
                                <a href="#">Home</a>
                                <span>Checkout</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Bread Crumb -->

            <!-- Page Content -->
            <section class="content-page">
                <div class="container mb-80">
                    <div class="row">
                        <div class="col-sm-12">
                            <article class="post-8">
                                <p class="checkout-info">
                                    Returning customer? <strong><a href="login-register.html">Click here to login</a></strong>
                                </p>
                                <p class="checkout-info">
                                    Have a coupon? <strong><a href="#">Click here to enter your code</a></strong>
                                </p>
                                <form class="product-checkout mt-45">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h3>Billing details</h3>
                                            <div class="row">
                                                <div class="form-field-wrapper form-center col-sm-6">
                                                    <label for="billing_first_name" class="left">
                                                        First Name
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_first_name" title="First Name" value="" placeholder="First Name" type="text" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-6">
                                                    <label for="billing_last_name" class="left">
                                                        Last Name
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_last_name" title="Last Name" value="" placeholder="Last Name" type="text" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_company" class="left">Company Name</label>
                                                    <input class="input-md form-full-width" name="billing_company" title="Company Name" value="" placeholder="Company Name" type="text">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_country" class="left">
                                                        County
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <select name="billing_country" id="billing_country" class="input-md form-full-width" autocomplete="country" tabindex="-1" aria-hidden="true" required="" aria-required="true">
                                                        <option value="">Select a country�</option>
                                                        <option value="AX">�land Islands</option>
                                                        <option value="AF">Afghanistan</option>
                                                        <option value="AL">Albania</option>
                                                        <option value="DZ">Algeria</option>
                                                        <option value="AS">American Samoa</option>
                                                        <option value="AD">Andorra</option>
                                                        <option value="AO">Angola</option>
                                                        <option value="AI">Anguilla</option>
                                                        <option value="AQ">Antarctica</option>
                                                        <option value="AG">Antigua and Barbuda</option>
                                                        <option value="AR">Argentina</option>
                                                        <option value="AM">Armenia</option>
                                                        <option value="AW">Aruba</option>
                                                        <option value="AU">Australia</option>
                                                        <option value="AT">Austria</option>
                                                        <option value="AZ">Azerbaijan</option>
                                                        <option value="BS">Bahamas</option>
                                                        <option value="BH">Bahrain</option>
                                                        <option value="BD">Bangladesh</option>
                                                        <option value="BB">Barbados</option>
                                                        <option value="BY">Belarus</option>
                                                        <option value="PW">Belau</option>
                                                        <option value="BE">Belgium</option>
                                                        <option value="BZ">Belize</option>
                                                        <option value="BJ">Benin</option>
                                                        <option value="BM">Bermuda</option>
                                                        <option value="BT">Bhutan</option>
                                                        <option value="BO">Bolivia</option>
                                                        <option value="BQ">Bonaire, Saint Eustatius and Saba</option>
                                                        <option value="BA">Bosnia and Herzegovina</option>
                                                        <option value="BW">Botswana</option>
                                                        <option value="BV">Bouvet Island</option>
                                                        <option value="BR">Brazil</option>
                                                        <option value="IO">British Indian Ocean Territory</option>
                                                        <option value="VG">British Virgin Islands</option>
                                                        <option value="BN">Brunei</option>
                                                        <option value="BG">Bulgaria</option>
                                                        <option value="BF">Burkina Faso</option>
                                                        <option value="BI">Burundi</option>
                                                        <option value="KH">Cambodia</option>
                                                        <option value="CM">Cameroon</option>
                                                        <option value="CA">Canada</option>
                                                        <option value="CV">Cape Verde</option>
                                                        <option value="KY">Cayman Islands</option>
                                                        <option value="CF">Central African Republic</option>
                                                        <option value="TD">Chad</option>
                                                        <option value="CL">Chile</option>
                                                        <option value="CN">China</option>
                                                        <option value="CX">Christmas Island</option>
                                                        <option value="CC">Cocos (Keeling) Islands</option>
                                                        <option value="CO">Colombia</option>
                                                        <option value="KM">Comoros</option>
                                                        <option value="CG">Congo (Brazzaville)</option>
                                                        <option value="CD">Congo (Kinshasa)</option>
                                                        <option value="CK">Cook Islands</option>
                                                        <option value="CR">Costa Rica</option>
                                                        <option value="HR">Croatia</option>
                                                        <option value="CU">Cuba</option>
                                                        <option value="CW">Cura�ao</option>
                                                        <option value="CY">Cyprus</option>
                                                        <option value="CZ">Czech Republic</option>
                                                        <option value="DK">Denmark</option>
                                                        <option value="DJ">Djibouti</option>
                                                        <option value="DM">Dominica</option>
                                                        <option value="DO">Dominican Republic</option>
                                                        <option value="EC">Ecuador</option>
                                                        <option value="EG">Egypt</option>
                                                        <option value="SV">El Salvador</option>
                                                        <option value="GQ">Equatorial Guinea</option>
                                                        <option value="ER">Eritrea</option>
                                                        <option value="EE">Estonia</option>
                                                        <option value="ET">Ethiopia</option>
                                                        <option value="FK">Falkland Islands</option>
                                                        <option value="FO">Faroe Islands</option>
                                                        <option value="FJ">Fiji</option>
                                                        <option value="FI">Finland</option>
                                                        <option value="FR">France</option>
                                                        <option value="GF">French Guiana</option>
                                                        <option value="PF">French Polynesia</option>
                                                        <option value="TF">French Southern Territories</option>
                                                        <option value="GA">Gabon</option>
                                                        <option value="GM">Gambia</option>
                                                        <option value="GE">Georgia</option>
                                                        <option value="DE">Germany</option>
                                                        <option value="GH">Ghana</option>
                                                        <option value="GI">Gibraltar</option>
                                                        <option value="GR">Greece</option>
                                                        <option value="GL">Greenland</option>
                                                        <option value="GD">Grenada</option>
                                                        <option value="GP">Guadeloupe</option>
                                                        <option value="GU">Guam</option>
                                                        <option value="GT">Guatemala</option>
                                                        <option value="GG">Guernsey</option>
                                                        <option value="GN">Guinea</option>
                                                        <option value="GW">Guinea-Bissau</option>
                                                        <option value="GY">Guyana</option>
                                                        <option value="HT">Haiti</option>
                                                        <option value="HM">Heard Island and McDonald Islands</option>
                                                        <option value="HN">Honduras</option>
                                                        <option value="HK">Hong Kong</option>
                                                        <option value="HU">Hungary</option>
                                                        <option value="IS">Iceland</option>
                                                        <option value="IN" selected="selected">India</option>
                                                        <option value="ID">Indonesia</option>
                                                        <option value="IR">Iran</option>
                                                        <option value="IQ">Iraq</option>
                                                        <option value="IE">Ireland</option>
                                                        <option value="IM">Isle of Man</option>
                                                        <option value="IL">Israel</option>
                                                        <option value="IT">Italy</option>
                                                        <option value="CI">Ivory Coast</option>
                                                        <option value="JM">Jamaica</option>
                                                        <option value="JP">Japan</option>
                                                        <option value="JE">Jersey</option>
                                                        <option value="JO">Jordan</option>
                                                        <option value="KZ">Kazakhstan</option>
                                                        <option value="KE">Kenya</option>
                                                        <option value="KI">Kiribati</option>
                                                        <option value="KW">Kuwait</option>
                                                        <option value="KG">Kyrgyzstan</option>
                                                        <option value="LA">Laos</option>
                                                        <option value="LV">Latvia</option>
                                                        <option value="LB">Lebanon</option>
                                                        <option value="LS">Lesotho</option>
                                                        <option value="LR">Liberia</option>
                                                        <option value="LY">Libya</option>
                                                        <option value="LI">Liechtenstein</option>
                                                        <option value="LT">Lithuania</option>
                                                        <option value="LU">Luxembourg</option>
                                                        <option value="MO">Macao S.A.R., China</option>
                                                        <option value="MK">Macedonia</option>
                                                        <option value="MG">Madagascar</option>
                                                        <option value="MW">Malawi</option>
                                                        <option value="MY">Malaysia</option>
                                                        <option value="MV">Maldives</option>
                                                        <option value="ML">Mali</option>
                                                        <option value="MT">Malta</option>
                                                        <option value="MH">Marshall Islands</option>
                                                        <option value="MQ">Martinique</option>
                                                        <option value="MR">Mauritania</option>
                                                        <option value="MU">Mauritius</option>
                                                        <option value="YT">Mayotte</option>
                                                        <option value="MX">Mexico</option>
                                                        <option value="FM">Micronesia</option>
                                                        <option value="MD">Moldova</option>
                                                        <option value="MC">Monaco</option>
                                                        <option value="MN">Mongolia</option>
                                                        <option value="ME">Montenegro</option>
                                                        <option value="MS">Montserrat</option>
                                                        <option value="MA">Morocco</option>
                                                        <option value="MZ">Mozambique</option>
                                                        <option value="MM">Myanmar</option>
                                                        <option value="NA">Namibia</option>
                                                        <option value="NR">Nauru</option>
                                                        <option value="NP">Nepal</option>
                                                        <option value="NL">Netherlands</option>
                                                        <option value="NC">New Caledonia</option>
                                                        <option value="NZ">New Zealand</option>
                                                        <option value="NI">Nicaragua</option>
                                                        <option value="NE">Niger</option>
                                                        <option value="NG">Nigeria</option>
                                                        <option value="NU">Niue</option>
                                                        <option value="NF">Norfolk Island</option>
                                                        <option value="KP">North Korea</option>
                                                        <option value="MP">Northern Mariana Islands</option>
                                                        <option value="NO">Norway</option>
                                                        <option value="OM">Oman</option>
                                                        <option value="PK">Pakistan</option>
                                                        <option value="PS">Palestinian Territory</option>
                                                        <option value="PA">Panama</option>
                                                        <option value="PG">Papua New Guinea</option>
                                                        <option value="PY">Paraguay</option>
                                                        <option value="PE">Peru</option>
                                                        <option value="PH">Philippines</option>
                                                        <option value="PN">Pitcairn</option>
                                                        <option value="PL">Poland</option>
                                                        <option value="PT">Portugal</option>
                                                        <option value="PR">Puerto Rico</option>
                                                        <option value="QA">Qatar</option>
                                                        <option value="RE">Reunion</option>
                                                        <option value="RO">Romania</option>
                                                        <option value="RU">Russia</option>
                                                        <option value="RW">Rwanda</option>
                                                        <option value="ST">S�o Tom� and Pr�ncipe</option>
                                                        <option value="BL">Saint Barth�lemy</option>
                                                        <option value="SH">Saint Helena</option>
                                                        <option value="KN">Saint Kitts and Nevis</option>
                                                        <option value="LC">Saint Lucia</option>
                                                        <option value="SX">Saint Martin (Dutch part)</option>
                                                        <option value="MF">Saint Martin (French part)</option>
                                                        <option value="PM">Saint Pierre and Miquelon</option>
                                                        <option value="VC">Saint Vincent and the Grenadines</option>
                                                        <option value="WS">Samoa</option>
                                                        <option value="SM">San Marino</option>
                                                        <option value="SA">Saudi Arabia</option>
                                                        <option value="SN">Senegal</option>
                                                        <option value="RS">Serbia</option>
                                                        <option value="SC">Seychelles</option>
                                                        <option value="SL">Sierra Leone</option>
                                                        <option value="SG">Singapore</option>
                                                        <option value="SK">Slovakia</option>
                                                        <option value="SI">Slovenia</option>
                                                        <option value="SB">Solomon Islands</option>
                                                        <option value="SO">Somalia</option>
                                                        <option value="ZA">South Africa</option>
                                                        <option value="GS">South Georgia/Sandwich Islands</option>
                                                        <option value="KR">South Korea</option>
                                                        <option value="SS">South Sudan</option>
                                                        <option value="ES">Spain</option>
                                                        <option value="LK">Sri Lanka</option>
                                                        <option value="SD">Sudan</option>
                                                        <option value="SR">Suriname</option>
                                                        <option value="SJ">Svalbard and Jan Mayen</option>
                                                        <option value="SZ">Swaziland</option>
                                                        <option value="SE">Sweden</option>
                                                        <option value="CH">Switzerland</option>
                                                        <option value="SY">Syria</option>
                                                        <option value="TW">Taiwan</option>
                                                        <option value="TJ">Tajikistan</option>
                                                        <option value="TZ">Tanzania</option>
                                                        <option value="TH">Thailand</option>
                                                        <option value="TL">Timor-Leste</option>
                                                        <option value="TG">Togo</option>
                                                        <option value="TK">Tokelau</option>
                                                        <option value="TO">Tonga</option>
                                                        <option value="TT">Trinidad and Tobago</option>
                                                        <option value="TN">Tunisia</option>
                                                        <option value="TR">Turkey</option>
                                                        <option value="TM">Turkmenistan</option>
                                                        <option value="TC">Turks and Caicos Islands</option>
                                                        <option value="TV">Tuvalu</option>
                                                        <option value="UG">Uganda</option>
                                                        <option value="UA">Ukraine</option>
                                                        <option value="AE">United Arab Emirates</option>
                                                        <option value="GB">United Kingdom (UK)</option>
                                                        <option value="US">United States (US)</option>
                                                        <option value="UM">United States (US) Minor Outlying Islands</option>
                                                        <option value="VI">United States (US) Virgin Islands</option>
                                                        <option value="UY">Uruguay</option>
                                                        <option value="UZ">Uzbekistan</option>
                                                        <option value="VU">Vanuatu</option>
                                                        <option value="VA">Vatican</option>
                                                        <option value="VE">Venezuela</option>
                                                        <option value="VN">Vietnam</option>
                                                        <option value="WF">Wallis and Futuna</option>
                                                        <option value="EH">Western Sahara</option>
                                                        <option value="YE">Yemen</option>
                                                        <option value="ZM">Zambia</option>
                                                        <option value="ZW">Zimbabwe</option>
                                                    </select>
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_address" class="left">
                                                        Address
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width mb-20" name="billing_address" title="Address" value="" placeholder="Street Address" type="text" required="" aria-required="true">
                                                    <input class="input-md form-full-width" name="billing_address_op" title="Address" value="" placeholder="Apartment, suite, unit etc. (optional)" type="text" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_town_city" class="left">
                                                        Town / City
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_town_city" title="Town / City" value="" placeholder="" type="text" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_state_county" class="left">
                                                        State / County
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_state_county" title="State / County" value="" placeholder="" type="text" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_state" class="left">
                                                        State / County
                                                        <abbr class="form-required" title="required">*</abbr></label>

                                                    <select name="billing_state" id="billing_state" class="input-md form-full-width" autocomplete="address-level1" data-placeholder="" tabindex="-1" aria-hidden="true" required="" aria-required="true">
                                                        <option value="">Select an option...</option>
                                                        <option value="AP">Andhra Pradesh</option>
                                                        <option value="AR">Arunachal Pradesh</option>
                                                        <option value="AS">Assam</option>
                                                        <option value="BR">Bihar</option>
                                                        <option value="CT">Chhattisgarh</option>
                                                        <option value="GA">Goa</option>
                                                        <option value="GJ">Gujarat</option>
                                                        <option value="HR">Haryana</option>
                                                        <option value="HP">Himachal Pradesh</option>
                                                        <option value="JK">Jammu and Kashmir</option>
                                                        <option value="JH">Jharkhand</option>
                                                        <option value="KA">Karnataka</option>
                                                        <option value="KL">Kerala</option>
                                                        <option value="MP">Madhya Pradesh</option>
                                                        <option value="MH">Maharashtra</option>
                                                        <option value="MN">Manipur</option>
                                                        <option value="ML">Meghalaya</option>
                                                        <option value="MZ">Mizoram</option>
                                                        <option value="NL">Nagaland</option>
                                                        <option value="OR">Orissa</option>
                                                        <option value="PB">Punjab</option>
                                                        <option value="RJ">Rajasthan</option>
                                                        <option value="SK">Sikkim</option>
                                                        <option value="TN">Tamil Nadu</option>
                                                        <option value="TS">Telangana</option>
                                                        <option value="TR">Tripura</option>
                                                        <option value="UK">Uttarakhand</option>
                                                        <option value="UP">Uttar Pradesh</option>
                                                        <option value="WB">West Bengal</option>
                                                        <option value="AN">Andaman and Nicobar Islands</option>
                                                        <option value="CH">Chandigarh</option>
                                                        <option value="DN">Dadra and Nagar Haveli</option>
                                                        <option value="DD">Daman and Diu</option>
                                                        <option value="DL">Delhi</option>
                                                        <option value="LD">Lakshadeep</option>
                                                        <option value="PY">Pondicherry (Puducherry)</option>
                                                    </select>
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_postcode" class="left">
                                                        Postcode / ZIP
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_postcode" title="Postcode" value="" placeholder="" type="text" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-6">
                                                    <label for="billing_phone" class="left">
                                                        Phone
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_phone" title="phone" value="" placeholder="(+00) 123 456 7890" type="tel" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-6">
                                                    <label for="billing_email" class="left">
                                                        Email
                                                        <abbr class="form-required" title="required">*</abbr></label>
                                                    <input class="input-md form-full-width" name="billing_email" title="Enter Email" value="" placeholder="Enter Email" type="email" required="" aria-required="true">
                                                </div>
                                                <div class="form-field-wrapper form-center col-sm-12">
                                                    <label for="billing_email" class="left">
                                                        <input class="" id="createaccount" name="createaccount" value="1" type="checkbox" />
                                                        <span>Create an account?</span></label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-order-review">
                                                <h3>Your order</h3>
                                                <div class="product-checkout-review-order">
                                                    <div class="responsive-table">
                                                        <table class="">
                                                            <thead>
                                                                <tr>
                                                                    <th class="product-name">Product</th>
                                                                    <th class="product-total">Total</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr class="cart_item">
                                                                    <td class="product-name">Alpha Block Black Polo T-Shirt<strong> x 1</strong></td>
                                                                    <td class="product-total">
                                                                        <span class="product-price-amount amount"><span class="currency-sign">$</span>399.00</span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="cart_item">
                                                                    <td class="product-name">Red Printed Round Neck T-Shirt<strong> x 2</strong></td>
                                                                    <td class="product-total">
                                                                        <span class="product-price-amount amount"><span class="currency-sign">$</span>598.00</span>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                            <tfoot>
                                                                <tr class="cart-subtotal">
                                                                    <th>Subtotal</th>
                                                                    <td>
                                                                        <strong><span class="product-price-amount amount"><span class="currency-sign">$</span>997.00</span></strong>
                                                                    </td>
                                                                </tr>
                                                                <tr class="shipping">
                                                                    <th>Shipping</th>
                                                                    <td>
                                                                        <ul id="shipping_method">
                                                                            <li>
                                                                                <input name="shipping_method[0]" data-index="0" id="shipping_method_0_legacy_flat_rate" value="legacy_flat_rate" class="shipping_method" checked="checked" type="radio">
                                                                                <label for="shipping_method_0_legacy_flat_rate">Flat Rate: <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>12.00</span></label>
                                                                            </li>
                                                                            <li>
                                                                                <input name="shipping_method[0]" data-index="0" id="shipping_method_0_legacy_free_shipping" value="legacy_free_shipping" class="shipping_method" type="radio">
                                                                                <label for="shipping_method_0_legacy_free_shipping">Free Shipping</label>
                                                                            </li>
                                                                            <li>
                                                                                <input name="shipping_method[0]" data-index="0" id="shipping_method_0_legacy_local_delivery" value="legacy_local_delivery" class="shipping_method" type="radio">
                                                                                <label for="shipping_method_0_legacy_local_delivery">Local Delivery</label>
                                                                            </li>
                                                                        </ul>
                                                                    </td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <th>Total</th>
                                                                    <td>
                                                                        <span class="product-price-amount amount"><span class="currency-sign">$</span>1009.00</span>
                                                                    </td>
                                                                </tr>
                                                            </tfoot>
                                                        </table>
                                                    </div>

                                                    <div class="product-checkout-payment">
                                                        <ul>
                                                            <li>
                                                                <input id="payment_method_bacs" name="payment_method" value="bacs" checked="checked" type="radio" />
                                                                <label for="payment_method_bacs">Direct Bank Transfer</label>
                                                                <div class="payment_box payment_method_bacs">
                                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.</p>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <input id="payment_method_cheque" name="payment_method" value="cheque" type="radio" />
                                                                <label for="payment_method_cheque">Check payments</label>
                                                            </li>
                                                            <li>
                                                                <input id="payment_method_cod" name="payment_method" value="cod" type="radio" />
                                                                <label for="payment_method_cod">Cash on Delivery</label>
                                                            </li>
                                                            <li>
                                                                <input id="payment_method_paypal" name="payment_method" value="paypal" type="radio" />
                                                                <label for="payment_method_paypal">
                                                                    PayPal<img class="paypal-img" src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png" />
                                                                    <a href="https://www.paypal.com/gb/webapps/mpp/paypal-popup" onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;">What is PayPal?</a>
                                                                </label>
                                                            </li>
                                                        </ul>
                                                        <div class="place-order">
                                                            <a class="btn btn-lg btn-color form-full-width" href="#">Place Order</a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
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
        <footer class="footer section-padding">
            <!-- Footer Info -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12 col-sm-12 mb-sm-45">
                        <div class="footer-block about-us-block">
                            <img src="<%=request.getContextPath()%>/userResources/image/logo_white.png" width="125" alt="">
                            <p>Gumbo beet greens corn soko endive gum gourd. Parsley allot courgette tatsoi pea sprouts fava bean soluta nobis est ses eligendi optio.</p>
                            <ul class="footer-social-icon list-none-ib">
                                <li><a href="http://facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.pinterest.com/" target="_blank"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
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
                                <li><i class="fa fa-map-marker" aria-hidden="true"></i>1 Wintergreen Dr. Huntley
                                    <br>
                                    IL 60142, Usa</li>
                                <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@sky.com">info@sky.com</a></li>
                                <li><i class="fa fa-phone" aria-hidden="true"></i>(013) 456789</li>
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
                        <input class="input-md fancy" name="footeremail" title="Enter Email Address.." placeholder="Enter Email Address.." type="text">
                        <button class="btn btn-md btn-color fancy">Sing Up</button>
                    </form>
                </div>
            </div>
            <!-- End Footer Newsletter -->

            <!-- Footer Copyright -->
            <div class="container">
                <div class="copyrights">
                    <p class="copyright">&copy; Created by <a href="http://nileforest.com/" target="_blank">NileForest</a>. Philos Responsive Woocommerce Theme 2017</p>
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
