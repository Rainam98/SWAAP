
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
    <link rel="shortcut icon" type="image/x-icon" href="userResources/image/favicon.ico">
    <link rel="icon" type="img/png" href="userResources/image/favicon.png">
    <link rel="apple-touch-icon" href="userResources/image/favicon.png">

    <!-- CSS -->
    <link href="userResources/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap css -->
    <link href="userResources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- fontawesome css -->
    <link href="userResources/css/animate.css" rel="stylesheet" type="text/css" />
    <!-- animate css -->
    <link href="userResources/css/style.css" rel="stylesheet" type="text/css" />
    <!-- template css -->
    <link href="userResources/css/settings-ver.5.3.1.css" rel="stylesheet" type="text/css" />
    <!-- Slider Revolution Css Setting -->

</head>
<body>

    <!-- Newsletter Popup ---------------------------------------------------->
    <section id="nlpopup" data-expires="30" data-delay="10">
        <!--Close Button-->
        <a href="javascript:void(0)" class="nlpopup_close nlpopup_close_icon">
            <img src="userResources/image/close-icon-white.png" alt="Newsletter Close" /></a>
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
                                <img src="userResources/image/product-img/product_12547554.jpg" alt="" /></a>

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
                                <img src="userResources/image/product-img/product_12547555.jpg" alt="" /></a>

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
                    <img src="userResources/image/search-icon-lg.png" alt="" />
                </div>
                <label class="h6 normal search-input-label" for="search-query">Enter keywords to Search Product</label>
                <input value="" name="q" type="search" placeholder="Search..." />
                <button type="submit">
                    <img src="userResources/image/search-lg-go-icon.png" alt="" />
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
                        <div class="col-12">
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
                                    <div class="widget-sidebar col-sm-6 col-md-6 col-lg-3">
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
                                    <div class="widget-sidebar widget-filter-price col-sm-6 col-md-6 col-lg-3">
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
                                    <div class="widget-sidebar widget-filter-color col-sm-6 col-md-6 col-lg-3">
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
                                    <div class="widget-sidebar widget-filter-size col-sm-6 col-md-6 col-lg-3">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470001.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470002.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470003.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470004.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470005.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470006.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470007.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470001.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470002.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470003.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470004.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470005.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470006.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470007.jpg" alt="">
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
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="userResources/image/product-img/product_125470001.jpg" alt="">
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
                            <img src="userResources/image/logo_white.png" width="125" alt="">
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
                        <img src="userResources/image/payment_logos.png" alt="payment">
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
    <script type="text/javascript" src="userResources/js/jquery.min.js"></script>
    <script type="text/javascript" src="userResources/js/jquery-ui.js"></script>
    <!-- jquery library js -->
    <script type="text/javascript" src="userResources/js/modernizr.js"></script>
    <!--modernizr Js-->
    <script type="text/javascript" src="userResources/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="userResources/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="userResources/js/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="userResources/js/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="userResources/js/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="userResources/js/revolution.extension.layeranimation.min.js"></script>
    <!--Slider Revolution Js File-->
    <script type="text/javascript" src="userResources/js/tether.min.js"></script>
    <!--Bootstrap tooltips require Tether (Tether Js)-->
    <script type="text/javascript" src="userResources/js/bootstrap.min.js"></script>
    <!-- bootstrap js -->
    <script type="text/javascript" src="userResources/js/owl.carousel.js"></script>
    <!-- carousel js -->
    <script type="text/javascript" src="userResources/js/slick.js"></script>
    <!-- Slick Slider js -->
    <script type="text/javascript" src="userResources/js/plugins-all.js"></script>
    <!-- Plugins All js -->
    <script type="text/javascript" src="userResources/js/custom.js"></script>
    <!-- custom js -->
    <!-- end jquery -->

</body>
</html>