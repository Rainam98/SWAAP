
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
                                <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547554.jpg"
                                     alt=""/></a>

                            <!--Item Content-->
                            <div class="product-content">
                                <!-- Item Linkcollateral -->
                                <a class="product-link" href="#">Alpha Block Black Polo T-Shirt</a>

                                <!-- Item Cart Totle -->
                                <div class="cart-collateral">
                                    <span class="qty-cart">1</span>&nbsp;<span>&#215;</span>&nbsp;<span
                                        class="product-price-amount"><span
                                        class="currency-sign">&#8377;</span>399.00</span>
                                </div>

                                <!-- Item Remove Icon -->
                                <a class="product-remove" href="javascript:void(0)"><i class="fa fa-times-circle"
                                                                                       aria-hidden="true"></i></a>
                            </div>
                        </li>

                        <!-- Item -->
                        <li>
                            <!--Item Image-->
                            <a href="#" class="product-image">
                                <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547555.jpg"
                                     alt=""/></a>

                            <!--Item Content-->
                            <div class="product-content">
                                <!-- Item Linkcollateral -->
                                <a class="product-link" href="#">Red Printed Round Neck T-Shirt</a>

                                <!-- Item Cart Totle -->
                                <div class="cart-collateral">
                                    <span class="qty-cart">2</span>&nbsp;<span>&#215;</span>&nbsp;<span
                                        class="product-price-amount"><span
                                        class="currency-sign">&#8377;</span>299.00</span>
                                </div>

                                <!-- Item Remove Icon -->
                                <a class="product-remove" href="javascript:void(0)"><i class="fa fa-times-circle"
                                                                                       aria-hidden="true"></i></a>
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
            <section class="content-page">
                <div class="container">
                    <div class="row">

                        <!-- Product Content -->
                        <div class="col-md-9 push-md-3">
                            <!-- Title -->
                            <div class="list-page-title">
                                <h2 class="">Men Polos & Tees <small>120 Products</small></h2>
                            </div>
                            <!-- End Title -->

                            <!-- Product Filter -->
                            <div class="product-filter-content">
                                <div class="product-filter-content-inner">

                                    <!--Product Filter Button-->
                                    <div class="product-filter-dropdown-btn "><a href="javascript:void(0)" data-toggle-target="filter-slide-toggle" class="btn btn-sm btn-gray slide-toggle-btn"><i class="fa fa-bars left" aria-hidden="true"></i>Filter</a></div>

                                    <!--Product Sort By-->
                                    <form class="product-sort-by">
                                        <label for="short-by">Short By</label>
                                        <select name="short-by" id="short-by" class="nice-select-box">
                                            <option value="default_sorting" selected="selected">Default sorting</option>
                                            <option value="sort_by_popularity">Popularity</option>
                                            <option value="sort_by_average_rating">Average rating</option>
                                            <option value="sort_by_newness">New product</option>
                                            <option value="price_low_to_high">Price: low to high</option>
                                            <option value="price_high_to_low">Price: high to low</option>
                                        </select>
                                    </form>
                                    <script>
                                        
                                    </script>
                                    <!--Product Show-->
                                    <form class="product-show">
                                        <label for="product-show">Show</label>
                                        <select name="product-show" id="product-show" class="nice-select-box">
                                            <option value="15" selected="selected">15</option>
                                            <option value="18">18</option>
                                            <option value="21">21</option>
                                            <option value="24">24</option>
                                            <option value="all">Show All</option>
                                        </select>
                                    </form>



                                    <!--Product List/Grid Icon-->
                                    <div class="product-view-switcher">
                                        <label>View</label>
                                        <div class="product-view-icon product-grid-switcher product-view-icon-active">
                                            <a class="" href="#"><i class="fa fa-th" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="product-view-icon product-list-switcher">
                                            <a class="" href="#"><i class="fa fa-th-list" aria-hidden="true"></i></a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- End Product Filter -->

                            <!-- Product filters Toggle-->
                            <div class="container product-filter-dropdown toggle-content" id="filter-slide-toggle">
                                <div class="row col mlr-0">
                                    <!-- Shop Categories -->
                                    <div class="widget-sidebar col-sm-12 col-md-6 col-lg-3">
                                        <h6 class="widget-title">Categories</h6>
                                        <ul class="widget-content widget-product-categories jq-accordian">
                                            <li>
                                                <a href="#">Accessories</a>
                                            </li>
                                            <li>
                                                <a class="javascript:void(0)">Clothings<span class="jq-accordionIcon"></span></a>
                                                <ul class="children" style="display: none;">
                                                    <li><a href="#">All</a></li>
                                                    <li><a href="#">Coats &amp; Jackets</a></li>
                                                    <li><a href="#">Shirts</a></li>
                                                    <li><a href="#">Sportswear</a></li>
                                                    <li><a href="#">Swimwear</a></li>
                                                    <li><a href="#">Trousers</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Man<span class="jq-accordionIcon"></span></a>
                                                <ul style="display: none;">
                                                    <li><a href="#">All</a></li>
                                                    <li><a href="#">Coats &amp; Jackets</a></li>
                                                    <li><a href="#">Shirts</a></li>
                                                    <li><a href="#">Sportswear</a></li>
                                                    <li><a href="#">Swimwear</a></li>
                                                    <li><a href="#">Trousers</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Jacket</a></li>
                                            <li><a href="#">New arrivals</a></li>
                                            <li><a href="#">Shoes</a></li>
                                            <li><a href="sdsd">Socks</a></li>
                                        </ul>
                                    </div>
                                    <!-- End Shop Categories -->

                                    <!-- Filter Price -->
                                    <div class="widget-sidebar widget-filter-price col-sm-12 col-md-6 col-lg-3">
                                        <h6 class="widget-title">Select Price</h6>
                                        <ul class="widget-content">
                                            <li>
                                                <a href="#">All</a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="amount"><span class="currencySymbol">$</span>0.00</span>
                                                    -
                                                <span class="amount"><span class="currencySymbol">$</span>500.00</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="amount"><span class="currencySymbol">$</span>500.00</span>
                                                    -
                                                <span class="amount"><span class="currencySymbol">$</span>1100.00</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="amount"><span class="currencySymbol">$</span>1100.00</span>
                                                    -
                                                <span class="amount"><span class="currencySymbol">$</span>1600.00</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="amount"><span class="currencySymbol">$</span>1600.00</span>
                                                    -
                                                <span class="amount"><span class="currencySymbol">$</span>2100.00</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="amount"><span class="currencySymbol">$</span>2100.00</span>
                                                    -
                                                <span class="amount"><span class="currencySymbol">$</span>2600.00</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="amount"><span class="currencySymbol">$</span>2600.00</span>
                                                    +
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Filter Price -->

                                    <!-- Filter Color -->
                                    <div class="widget-sidebar widget-filter-color col-sm-12 col-md-6 col-lg-3">
                                        <h6 class="widget-title">Select Color</h6>
                                        <ul class="widget-content">
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #ff4040"></span></div>
                                                    Red</a>
                                                <span class="color-count">(9)</span>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #000"></span></div>
                                                    Black</a>
                                                <span class="color-count">(112)</span>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #ff9000"></span></div>
                                                    Orange</a>
                                                <span class="color-count">(56)</span>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #ffcf3d"></span></div>
                                                    Yellow</a>
                                                <span class="color-count">(24)</span>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #55b0da"></span></div>
                                                    Blue</a>
                                                <span class="color-count">(18)</span>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #9ada55"></span></div>
                                                    Green</a>
                                                <span class="color-count">(72)</span>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="filter-color-switcher"><span style="background-color: #7a463b"></span></div>
                                                    Brown</a>
                                                <span class="color-count">(5)</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Filter Color -->

                                    <!-- Filter Size -->
                                    <div class="widget-sidebar widget-filter-size col-sm-12 col-md-6 col-lg-3">
                                        <h6 class="widget-title">Select Size</h6>
                                        <ul class="widget-content ">
                                            <li>
                                                <a href="#">L</a>
                                                <span>(24)</span>
                                            </li>
                                            <li>
                                                <a href="#">M</a>
                                                <span>(34)</span>
                                            </li>
                                            <li>
                                                <a href="#">S</a>
                                                <span>(45)</span>
                                            </li>
                                            <li>
                                                <a href="#">X</a>
                                                <span>(102)</span>
                                            </li>
                                            <li>
                                                <a href="#">XL</a>
                                                <span>(60)</span>
                                            </li>
                                            <li>
                                                <a href="#">XS</a>
                                                <span>(78)</span>
                                            </li>
                                            <li>
                                                <a href="#">XXL</a>
                                                <span>(35)</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Filter Size -->
                                </div>
                            </div>
                            <!-- End Product filters Toggle-->

                            <!-- Product Grid -->
                            <div class="row product-list-item">
                                <!-- item.1 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.2 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.3 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.4 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.5 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.6 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.7 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.8 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.9 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price">$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.10 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.11 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.12 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.13 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.14 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>

                                <!-- item.15 -->
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
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
                                            <h5 class="item-price"><del>$79.00</del>$39.00</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>


                            </div>
                            <!-- End Product Grid -->

                            <div class="pagination-wraper">
                                <p>Showing 1 - 15 of 120 results</p>
                                <div class="pagination">
                                    <ul class="pagination-numbers">
                                        <!--<li>
                                            <a href="#" class="prev page-number"><i class="fa fa-angle-double-left"></i></a>
                                        </li>-->
                                        <li>
                                            <a href="#" class="page-number current">1</a>
                                        </li>
                                        <li>
                                            <a href="#" class="page-number">2</a>
                                        </li>
                                        <li>
                                            <a href="#" class="page-number">3</a>
                                        </li>
                                        <li>
                                            <span class="page-number dots">...</span>
                                        </li>
                                        <li>
                                            <a href="#" class="page-number">29</a>
                                        </li>
                                        <li>
                                            <a href="#" class="next page-number"><i class="fa fa-angle-double-right"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        <!-- End Product Content -->

                        <!-- Sidebar -->
                        <div class="sidebar-container col-md-3 pull-md-9">

                            <!-- Categories -->
                            <div class="widget-sidebar">
                                <h6 class="widget-title">Shop Categories</h6>
                                <ul class="widget-content widget-product-categories jq-accordian">
                                    <li>
                                        <a href="#">Accessories</a>
                                    </li>
                                    <li>
                                        <a>Clothings</a>
                                        <ul class="children">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Coats & Jackets</a></li>
                                            <li><a href="#">Shirts</a></li>
                                            <li><a href="#">Sportswear</a></li>
                                            <li><a href="#">Swimwear</a></li>
                                            <li><a href="#">Trousers</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Man</a>
                                        <ul>
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Coats & Jackets</a></li>
                                            <li><a href="#">Shirts</a></li>
                                            <li><a href="#">Sportswear</a></li>
                                            <li><a href="#">Swimwear</a></li>
                                            <li><a href="#">Trousers</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Jacket</a></li>
                                    <li><a href="#">New arrivals</a></li>
                                    <li><a href="#">Shoes</a></li>
                                    <li><a href="sdsd">Socks</a></li>
                                </ul>
                            </div>

                            <!-- Filter By Price -->
                            <div class="widget-sidebar widget-price-range">
                                <h6 class="widget-title">Filter By Price</h6>
                                <form class="widget-content" method="get" action="#">
                                    <div class="price-range-slider"></div>
                                    <div class="price-range-amount">
                                        <input id="price_range_min" name="price_range_min" value="" data-min="140" placeholder="Min price" style="display: none;" type="text">
                                        <input id="price_range_max" name="price_range_max" value="" data-max="1100" placeholder="Max price" style="display: none;" type="text">
                                        <div id="price-range-from-to">
                                        </div>
                                    </div>
                                    <button class="btn btn-xs btn-black pull-right" type="submit">Filter</button>
                                </form>
                            </div>

                            <!-- Filter By Color -->
                            <div class="widget-sidebar widget-filter-color">
                                <h6 class="widget-title">Filter By Color</h6>
                                <ul class="widget-content">
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #ff4040"></span></div>
                                            Red</a>
                                        <span class="color-count">(9)</span>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #000"></span></div>
                                            Black</a>
                                        <span class="color-count">(112)</span>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #ff9000"></span></div>
                                            Orange</a>
                                        <span class="color-count">(56)</span>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #ffcf3d"></span></div>
                                            Yellow</a>
                                        <span class="color-count">(24)</span>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #55b0da"></span></div>
                                            Blue</a>
                                        <span class="color-count">(18)</span>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #9ada55"></span></div>
                                            Green</a>
                                        <span class="color-count">(72)</span>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="filter-color-switcher"><span style="background-color: #7a463b"></span></div>
                                            Brown</a>
                                        <span class="color-count">(5)</span>
                                    </li>
                                </ul>
                            </div>

                            <!-- Filter By Size -->
                            <div class="widget-sidebar widget-filter-size">
                                <h6 class="widget-title">Filter By Size</h6>
                                <ul class="widget-content">
                                    <li>
                                        <a href="#">L</a>
                                        <span>(24)</span>
                                    </li>
                                    <li>
                                        <a href="#">M</a>
                                        <span>(34)</span>
                                    </li>
                                    <li>
                                        <a href="#">S</a>
                                        <span>(45)</span>
                                    </li>
                                    <li>
                                        <a href="#">X</a>
                                        <span>(102)</span>
                                    </li>
                                    <li>
                                        <a href="#">XL</a>
                                        <span>(60)</span>
                                    </li>
                                    <li>
                                        <a href="#">XS</a>
                                        <span>(78)</span>
                                    </li>
                                    <li>
                                        <a href="#">XXL</a>
                                        <span>(35)</span>
                                    </li>
                                </ul>
                            </div>

                            <!-- Filter By Tag -->
                            <div class="widget-sidebar widget-filter-tag">
                                <h6 class="widget-title">Popular Tag</h6>
                                <ul class="widget-content">
                                    <li>
                                        <a href="#">Shirt</a>
                                    </li>
                                    <li>
                                        <a href="#">Bag</a>
                                    </li>
                                    <li>
                                        <a href="#">Vintage</a>
                                    </li>
                                    <li>
                                        <a href="#">Sweaters</a>
                                    </li>
                                    <li>
                                        <a href="#">t-shirt</a>
                                    </li>
                                    <li>
                                        <a href="#">white</a>
                                    </li>
                                    <li>
                                        <a href="#">Black</a>
                                    </li>
                                    <li>
                                        <a href="#">New</a>
                                    </li>
                                    <li>
                                        <a href="#">Popular</a>
                                    </li>
                                </ul>
                            </div>

                            <!-- Widget Product -->
                            <div class="widget-sidebar widget-product">
                                <h6 class="widget-title">Popular Product</h6>
                                <ul class="widget-content">

                                    <!--Item-->
                                    <li>
                                        <a class="product-img" href="#">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470007.jpg" alt="">
                                        </a>
                                        <div class="product-content">
                                            <a class="product-link" href="#">Alpha Block Black Polo Sleem T-Shirt</a>
                                            <div class="star-rating">
                                                <span style="width: 80%;"></span>
                                            </div>
                                            <span class="product-amount">$399.00</span>
                                        </div>
                                    </li>

                                    <!--Item-->
                                    <li>
                                        <a class="product-img" href="#">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470006.jpg" alt="">
                                        </a>
                                        <div class="product-content">
                                            <a class="product-link" href="#">Red Printed Round Neck T-Shirt</a>
                                            <div class="star-rating">
                                                <span style="width: 100%;"></span>
                                            </div>
                                            <span class="product-amount">$399.00</span>
                                        </div>
                                    </li>

                                    <!--Item-->
                                    <li>
                                        <a class="product-img" href="#">
                                            <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_125470005.jpg" alt="">
                                        </a>
                                        <div class="product-content">
                                            <a class="product-link" href="#">Maroon Solid Henley T-Shirts</a>
                                            <div class="star-rating">
                                                <span style="width: 100%;"></span>
                                            </div>
                                            <span class="product-amount">$399.00</span>
                                        </div>
                                    </li>

                                </ul>
                            </div>

                            <div class="widget-sidebar widget-banner">
                                <a href="#" class="banner-image-wrap">
                                    <img src="<%=request.getContextPath()%>/userResources/image/banner/banner_115146.jpg" alt="" />
                                </a>
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
