
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
<jsp:include page="header.jsp"></jsp:include>
	

    <!-- Newsletter Popup ---------------------------------------------------->


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
                                <span>Contact Us</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </section> -->
            <!-- Bread Crumb -->

            <!-- Page Content -->
            <section class="content-page">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div  class="map style1 mb-45">
                             <h2 class="normal"><span>Contact Us</span></h2>
                            <form class="Contact-form">
                                <div class="form-field-wrapper">
                                    <label>Your Name <span class="required">*</span></label>
                                    <input id="author" class="input-md form-full-width" name="author" placeholder=" EnterYour Name (required)" value="" size="30" aria-required="true" required="" type="text">
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Your Email <span class="required">*</span></label>
                                    <input id="author-email" class="input-md form-full-width" name="author" placeholder="Enter Your Email Address (required)" value="" size="30" aria-required="true" required="" type="email">
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Your subject <span class="required">*</span></label>
                                    <input id="subject" class="input-md form-full-width" name="author" placeholder="Enter Your Subject (required)" value="" size="30" aria-required="true" required="" type="text">
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Comments<span class="required">*</span></label>
                                    <textarea id="comment" class="form-full-width" name="comment" placeholder="Enter Your Subject (required)" cols="45" rows="8" aria-required="true" required=""></textarea>
                                </div>
                                <div class="form-field-wrapper">
                                    <input name="submit" id="submit" class="submit btn btn-md btn-color" value="Submit" type="submit">
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="row">
                        <div class="col-md-4 mb-xs-30">
                            <h2 class="normal"><span>Stay In Touch</span></h2>
                            <p class="mb-25">Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
                            <h6>Company address</h6>
                            <p class="mb-25">
                                1 Wintergreen Dr. Huntley,
                                <br>
                                NY 11510,
                                <br>
                                United States
                            </p>
                            <h6>Contact Information</h6>
                            <ul class="Contact-information mb-25">
                                <li><i class="fa fa-envelope" aria-hidden="true"></i>info@sky.com</li>
                                <li><i class="fa fa-phone" aria-hidden="true"></i>(013) 456789</li>
                            </ul>
                            <hr />
                            <div class="product-share mtb-30">
                                <ul class="list-none">
                                    <li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="http://twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="http://plus.google.com/" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="http://pinterest.com/" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="col-md-4 offset-md-2">
                            <h2 class="normal"><span>Contact Us</span></h2>
                            <form class="Contact-form">
                                <div class="form-field-wrapper">
                                    <label>Your Name <span class="required">*</span></label>
                                    <input id="author" class="input-md form-full-width" name="author" placeholder=" EnterYour Name (required)" value="" size="30" aria-required="true" required="" type="text">
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Your Email <span class="required">*</span></label>
                                    <input id="author-email" class="input-md form-full-width" name="author" placeholder="Enter Your Email Address (required)" value="" size="30" aria-required="true" required="" type="email">
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Your subject <span class="required">*</span></label>
                                    <input id="subject" class="input-md form-full-width" name="author" placeholder="Enter Your Subject (required)" value="" size="30" aria-required="true" required="" type="text">
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Comments<span class="required">*</span></label>
                                    <textarea id="comment" class="form-full-width" name="comment" placeholder="Enter Your Subject (required)" cols="45" rows="8" aria-required="true" required=""></textarea>
                                </div>
                                <div class="form-field-wrapper">
                                    <input name="submit" id="submit" class="submit btn btn-md btn-color" value="Submit" type="submit">
                                </div>
                            </form>
                        </div>
                    </div> -->
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
    <script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en" type="text/javascript"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/map.js"></script>
    <!-- Map js -->
    <!-- end jquery -->

</body>
</html>
