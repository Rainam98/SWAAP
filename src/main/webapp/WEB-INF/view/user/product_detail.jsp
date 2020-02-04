
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
    <link href="<%=request.getContextPath()%>/userResources/css/photoswipe.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/userResources/css/default-skin.css" rel="stylesheet" type="text/css" />
    <!-- Photoswipe Popup-->

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
                                <a href="#">Categories</a>
                                <span>Men Polos & Tees</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Bread Crumb -->

            <!-- Page Content -->
            <section id="product-ID_XXXX" class="content-page single-product-content">

                <!-- Product -->
                <div id="product-detail" class="container">
                    <div class="row">
                        <!-- Product Image -->
                        <div class="col-lg-6 col-md-6 col-sm-12 mb-30">
                            <div class="product-page-image">
                                <!-- Slick Image Slider -->
                                <div class="product-image-slider product-image-gallery" id="product-image-gallery" data-pswp-uid="3">
                                    <div class="item">
                                        <a class="product-gallery-item" href="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_1.jpg" data-size="" data-med="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_1.jpg" data-med-size="">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_1.jpg" alt="image 1" />
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a class="product-gallery-item" href="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_2.jpg" data-size="" data-med="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_2.jpg" data-med-size="">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_2.jpg" alt="image 2" />
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a class="product-gallery-item" href="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_3.jpg" data-size="" data-med="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_3.jpg" data-med-size="">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_3.jpg" alt="image 3" />
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a class="product-gallery-item" href="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_4.jpg" data-size="" data-med="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_4.jpg" data-med-size="">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_4.jpg" alt="image 4" />
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a class="product-gallery-item" href="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_5.jpg" data-size="" data-med="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_5.jpg" data-med-size="">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_5.jpg" alt="image 5" />
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a class="product-gallery-item" href="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_6.jpg" data-size="" data-med="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_6.jpg" data-med-size="">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_6.jpg" alt="image 1" />
                                        </a>
                                    </div>
                                </div>
                                <!-- End Slick Image Slider -->

                                <a href="javascript:void(0)" id="zoom-images-button" class="zoom-images-button"><i class="fa fa-expand" aria-hidden="true"></i></a>


                            </div>

                            <!-- Slick Thumb Slider -->
                            <div class="product-image-slider-thumbnails">
                                <div class="item">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_1.jpg" alt="image 1" />
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_2.jpg" alt="image 1" />
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_3.jpg" alt="image 1" />
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_4.jpg" alt="image 1" />
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_5.jpg" alt="image 1" />
                                </div>
                                <div class="item">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547007_6.jpg" alt="image 1" />
                                </div>
                            </div>
                            <!-- End Slick Thumb Slider -->
                        </div>
                        <!-- End Product Image -->

                        <!-- Product Content -->
                        <div class="col-lg-6 col-md-6 col-sm-12 mb-30">
                            <div class="product-page-content">
                                <h2 class="product-title">LP - Black Solid Polo T-Shirt</h2>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <div class="product-price">
                                    <del>$499.00</del><span><span class="product-price-sign">$</span><span class="product-price-text">399.00</span></span>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <div class="row product-filters">
                                    <form class="col-md-6 filters-color">
                                        <label for="select-color">Select Color</label>

                                        <!--<select name="select-color" id="select-color" class="nice-select-box select-color">
                                            <option value="" selected="selected">Choose an option</option>
                                            <option value="#f00">Red</option>
                                            <option value="blue">Blue</option>
                                            <option value="orange">Orange</option>
                                            <option value="green">Green</option>
                                            <option value="black">Black</option>
                                            <option value="gray">Gray</option>
                                        </select>-->

                                        <div class="color-selector">
                                            <div class="entry active" style="background: #000;">&nbsp;</div>
                                            <div class="entry" style="background: #7eabe9;">&nbsp;</div>
                                            <div class="entry" style="background: #f27123;">&nbsp;</div>
                                            <div class="entry" style="background: #d1d1d1;">&nbsp;</div>
                                        </div>
                                    </form>
                                    <form class="col-md-6 filters-size">
                                        <label for="select-size">Select Size</label>
                                        <!--<select name="select-size" id="select-size" class="nice-select-box">
                                            <option value="" selected="selected">Choose an option</option>
                                            <option value="l">L</option>
                                            <option value="m">M</option>
                                            <option value="s">S</option>
                                            <option value="x">X</option>
                                            <option value="xl">XL</option>
                                            <option value="xs">XS</option>
                                            <option value="xxl">XXL</option>
                                        </select>-->
                                        <div class="size-selector">
                                            <div class="entry active">S</div>
                                            <div class="entry">M</div>
                                            <div class="entry">L</div>
                                            <div class="entry">X</div>
                                            <div class="entry">XL</div>
                                        </div>
                                    </form>
                                </div>
                                <form class="single-variation-wrap">
                                    <div class="product-quantity">
                                        <span data-value="+" class="quantity-btn quantityPlus"></span>
                                        <input class="quantity input-lg" step="1" min="1" max="9" name="quantity" value="1" title="Quantity" type="number" />
                                        <span data-value="-" class="quantity-btn quantityMinus"></span>
                                    </div>
                                    <button type="submit" class="btn btn-lg btn-black"><i class="fa fa-shopping-bag" aria-hidden="true"></i>Add to cart</button>
                                </form>
                                <div class="single-add-to-wrap">
                                    <a class="single-add-to-wishlist"><i class="fa fa-heart left" aria-hidden="true"></i><span>Add to Wishlist</span></a>
                                    <a class="single-add-to-compare "><i class="fa fa-refresh left" aria-hidden="true"></i><span>Add to Compare</span></a>
                                </div>
                                <div class="product-meta">
                                    <span>SKU : <span class="sku" itemprop="sku">005687</span></span>
                                    <span>Category : <span class="category" itemprop="category">Shoes</span></span>
                                </div>
                                <div class="product-share">
                                    <span>Share :</span>
                                    <ul>
                                        <li><a href="https://www.facebook.com/sharer/sharer.php?u=http://nileforest.com/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="http://twitter.com/share?url=http://nileforest.com/" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="http://plus.google.com/share?url=http://nileforest.com/" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="mailto:?subject=Check this http://nileforest.com/" target="_blank"><i class="fa fa-envelope"></i></a></li>
                                        <li><a href="http://pinterest.com/pin/create/button/?url=http://nileforest.com/exampleImage.jpg" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Product -->

                <!-- Product Content Tab -->
                <div class="product-tabs-wrapper container">
                    <ul class="product-content-tabs nav nav-tabs" role="tablist">

                        <li class="nav-item">
                            <a class="active" href="#tab_description" role="tab" data-toggle="tab">Descriptiont</a>
                        </li>
                        <li class="nav-item">
                            <a class="" href="#tab_additional_information" role="tab" data-toggle="tab">Additional Information</a>
                        </li>
                        <li class="nav-item">
                            <a class="" href="#tab_reviews" role="tab" data-toggle="tab">Reviews (<span>3</span>)</a>
                        </li>
                        <li class="nav-item">
                            <a class="" href="#tab_custom" role="tab" data-toggle="tab">Custom Tab</a>
                        </li>

                    </ul>
                    <div class="product-content-Tabs_wraper tab-content container">
                        <div id="tab_description" role="tabpanel" class="tab-pane fade in active">
                            <!-- Accordian Title -->
                            <h6 class="product-collapse-title" data-toggle="collapse" data-target="#tab_description-coll">Description</h6>
                            <!-- End Accordian Title -->
                            <!-- Accordian Content -->
                            <div id="tab_description-coll" class="shop_description product-collapse collapse container">
                                <div class="row">
                                    <div class=" col-md-6">
                                        <p>
                                            Etiam molestie sit amet arcu vel dictum. Integer mattis est nec porta porttitor. Maecenas condimentum sapien eget urna condimentum, non sagittis ante dapibus. Donec congue libero ut ex malesuada auctor. Vivamus at urna et erat aliquam pharetra. Nulla facilisi. Morbi feugiat tortor finibus elit aliquet tempor.
Generated 5 paragraphs, 453 words, 3065 bytes of Lorem Ipsum
                                        </p>
                                        <h4>Vivamus at urna</h4>
                                        <ul>
                                            <li>Etiam molestie sit amet arcu vel dictum</li>
                                            <li>Integer mattis est nec porta porttitor</li>
                                            <li>Maecenas condimentum sapien eget urna condimentum</li>
                                            <li>Donec congue libero ut ex malesuada auctor</li>
                                            <li>Generated 5 paragraphs, 453 words</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            Etiam molestie sit amet arcu vel dictum. Integer mattis est nec porta porttitor. Maecenas condimentum sapien eget urna condimentum, non sagittis ante dapibus. Donec congue libero ut ex malesuada auctor. Vivamus at urna et erat aliquam pharetra. Nulla facilisi. Morbi feugiat tortor finibus elit aliquet tempor.
Generated 5 paragraphs, 453 words, 3065 bytes of Lorem Ipsum
                                        </p>
                                        <h4>hadding four</h4>
                                        <h5>hadding five</h5>
                                        <h6>hadding six</h6>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordian Content -->
                        </div>

                        <div id="tab_additional_information" role="tabpanel" class="tab-pane fade">
                            <!-- Accordian Title -->
                            <h6 class="product-collapse-title" data-toggle="collapse" data-target="#tab_additional_information-coll">Additional Information</h6>
                            <!-- End Accordian Title -->
                            <!-- Accordian Content -->
                            <div id="tab_additional_information-coll" class="container product-collapse collapse">

                                <table class="shop_attributes">
                                    <tbody>
                                        <tr>
                                            <th>Color</th>
                                            <td>Black, Gray, White</td>
                                        </tr>
                                        <tr>
                                            <th>Weight</th>
                                            <td>5 kg</td>
                                        </tr>
                                        <tr>
                                            <th>Dimensions</th>
                                            <td>60 x 40 x 60 cm</td>
                                        </tr>
                                        <tr>
                                            <th>Washcare</th>
                                            <td>Dry Clean</td>
                                        </tr>
                                        <tr>
                                            <th>Composition</th>
                                            <td>100% Polyester</td>
                                        </tr>
                                        <tr>
                                            <th>Lining composition</th>
                                            <td>100% Polyester</td>
                                        </tr>
                                        <tr>
                                            <th>Other info</th>
                                            <td>Ullamcorper nisl mus integer mollis vestibulu</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                            <!-- End Accordian Content -->
                        </div>
                        <div id="tab_reviews" role="tabpanel" class="tab-pane fade">
                            <!-- Accordian Title -->
                            <h6 class="product-collapse-title" data-toggle="collapse" data-target="#tab_reviews-coll">Reviews (0)</h6>
                            <!-- End Accordian Title -->
                            <!-- Accordian Content -->
                            <div id="tab_reviews-coll" class=" product-collapse collapse container">
                                <div class="row">
                                    <div class="review-form-wrapper col-md-6">
                                        <h6 class="review-title">Add a Review </h6>
                                        <form class="comment-form">
                                            <div class="form-field-wrapper">
                                                <label>Your Rating</label>
                                                <p class="stars">
                                                    <span>
                                                        <a class="star-1" href="#">1</a>
                                                        <a class="star-2" href="#">2</a>
                                                        <a class="star-3" href="#">3</a>
                                                        <a class="star-4 active" href="#">4</a>
                                                        <a class="star-5" href="#">5</a>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="form-field-wrapper">
                                                <label>Your Review <span class="required">*</span></label>
                                                <textarea id="comment" class="form-full-width" name="comment" cols="45" rows="8" aria-required="true" required=""></textarea>
                                            </div>
                                            <div class="form-field-wrapper">
                                                <label>Name <span class="required">*</span></label>
                                                <input id="author" class="input-md form-full-width" name="author" value="" size="30" aria-required="true" required="" type="text">
                                            </div>
                                            <div class="form-field-wrapper">
                                                <label>Email <span class="required">*</span></label>
                                                <input id="email" class="input-md form-full-width" name="email" value="" size="30" aria-required="true" required="" type="email">
                                            </div>
                                            <div class="form-field-wrapper">
                                                <input name="submit" id="submit" class="submit btn btn-md btn-color" value="Submit" type="submit">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="comments col-md-6">
                                        <h6 class="review-title">Customer Reviews</h6>
                                        <!--<p class="review-blank">There are no reviews yet.</p>-->
                                        <ul class="commentlist">
                                            <li id="comment-101" class="comment-101">
                                                <img src="<%=request.getContextPath()%>/userResources/image/avatar.jpg" class="avatar" alt="author" />
                                                <div class="comment-text">
                                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                                        <span style="width: 100%"></span>
                                                    </div>
                                                    <p class="meta">
                                                        <strong itemprop="author">James Koster</strong>
                                                        &nbsp;&mdash;&nbsp;
                                                    <time itemprop="datePublished" datetime="">April 25, 2016</time>
                                                    </p>
                                                    <div class="description" itemprop="description">
                                                        <p>Wow Amazing!</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li id="102" class="comment-102">
                                                <img src="<%=request.getContextPath()%>/userResources/image/avatar.jpg" class="avatar" alt="author" />
                                                <div class="comment-text">
                                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                                        <span style="width: 80%"></span>
                                                    </div>
                                                    <p class="meta">
                                                        <strong itemprop="author">Michel</strong>
                                                        &nbsp;&mdash;&nbsp;
                                                    <time itemprop="datePublished" datetime="">April 14, 2016</time>
                                                    </p>
                                                    <div class="description" itemprop="description">
                                                        <p>Wow Special!</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li id="comment-103" class="comment-103">
                                                <img src="<%=request.getContextPath()%>/userResources/image/avatar.jpg" class="avatar" alt="author" />
                                                <div class="comment-text">
                                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
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
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordian Content -->
                        </div>
                        <div id="tab_custom" role="tabpanel" class="tab-pane fade">
                            <!-- Accordian Title -->
                            <h6 class="product-collapse-title" data-toggle="collapse" data-target="#tab_custom-coll">Custom</h6>
                            <!-- End Accordian Title -->
                            <!-- Accordian Content -->
                            <div id="tab_custom-coll" class="product-collapse collapse container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="<%=request.getContextPath()%>/userResources/image/blog/blog_02.jpg" alt="shipping delivery" />
                                    </div>
                                    <div class="col-md-8">
                                        <h3 class="normal"><span>When an unknown printer took a galley of type.</span></h3>
                                        <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged. </p>
                                        <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged. </p>
                                        <a href="#" class="btn btn-sm btn-black mt-20">More Now</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordian Content -->
                        </div>
                    </div>
                </div>
                <!-- End Product Content Tab -->

                <!-- Product Carousel -->
                <div class="container product-carousel">
                    <h2 class="page-title">Related Products</h2>
                    <div id="new-tranding" class="product-item-4 owl-carousel owl-theme nf-carousel-theme1">
                        <!-- item.1 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470001.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price">$39.00</h5>
                            </div>
                        </div>
                        <!-- item.2 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470002.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                            </div>
                        </div>
                        <!-- item.3 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470003.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price">$39.00</h5>
                            </div>
                        </div>
                        <!-- item.4 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470004.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price">$39.00</h5>
                            </div>
                        </div>
                        <!-- item.5 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470005.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price">$39.00</h5>
                            </div>
                        </div>
                        <!-- item.6 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470006.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price">$39.00</h5>
                            </div>
                        </div>
                        <!-- item.7 -->
                        <div class="product-item">
                            <div class="product-item-inner">
                                <div class="product-img-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470007.jpg" alt="">
                                </div>
                                <div class="product-button">
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-detail">
                                <a class="tag" href="#">Men Fashion</a>
                                <p class="product-title"><a href="product_detail.html">United Colors of Benetton</a></p>
                                <div class="product-rating">
                                    <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                        <span style="width: 60%"></span>
                                    </div>
                                    <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                </div>
                                <p class="product-description">
                                    When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic remaining essentially unchanged.
                                </p>
                                <h5 class="item-price">$39.00</h5>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- End Product Carousel -->

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
    <!-- OWL carousel js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
    <!-- Slick Slider js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/photoswipe.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/photoswipe-ui-default.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/photoswipe-core.js"></script>
    <!--Photoswipe Popup-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/plugins-all.js"></script>
    <!-- Plugins All js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/custom.js"></script>
    <!-- custom js -->
    <!-- end jquery -->

</body>
</html>
