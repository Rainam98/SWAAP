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

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


    <!-- Overlay -->
    <div id="nlpopup_overlay"></div>
    <!-- End Newsletter Popup ------------------------------------------------>

    <!-- Sidebar Menu (Cart Menu) ------------------------------------------------>
    <jsp:include page="cartSlider.jsp"></jsp:include>

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
                                <a href="#">Categories</a>
                                <span>Men Polos & Tees</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </section> -->
            <!-- Bread Crumb -->

            <!-- Page Content -->

            <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

            <section class="content-page">
                <div class="container">
                    <div class="row">

                        <!-- Product Content -->
                        <div class="col-12">
                            <!-- Title -->
                            <div class="list-page-title">
                                <h2 class="">Categories<small></small></h2>
                            </div>
                            <!-- End Title -->

                            <!-- Product Filter -->
                            <div class="product-filter-content">
                                <div class="product-filter-content-inner">

                                    <!--Product Filter Button-->
                                    <div class="product-filter-dropdown-btn "><a href="javascript:void(0)" data-toggle-target="filter-slide-toggle" class="btn btn-sm btn-gray slide-toggle-btn"><i class="fa fa-bars left" aria-hidden="true"></i>Filter</a></div>

                                    <!--Product Sort By-->
                                    <form class="product-sort-by">
                                        <label for="short-by">Sort By</label>
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
                                                    <span class="amount"><span
                                                            class="currencySymbol">$</span>2600.00</span>
                                                    +
                                                </a>
                                            </li>
                                    </ul>
                                </div>
                                <!-- End Filter Price -->

                                <!-- Filter Color -->

                                <!-- End Filter Color -->

                                <!-- Filter Size -->

                                <!-- End Filter Size -->
                            </div>
                        </div>
                        <!-- End Product filters Toggle-->

                        <!-- Product Grid -->
                        <div class="row product-list-item">
                            <!-- item.1 -->
                            <c:forEach items="${categoryList}" var="categoryVariable">
                                <div class="product-item-element col-sm-6 col-md-4 col-lg-3">
                                    <!--Product Item-->

                                    <div class="product-item">

                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                                <img src="<%=request.getContextPath()%>/category/${categoryVariable.categoryName}.jpg"
                                                     style="height: 175px;  width: 265px;">
                                            </div>
                                            <!-- <div class="product-button">
                                                <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Cart"><i class="fa fa-shopping-bag"></i></a>
                                                <a href="#" class="js_tooltip" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart"></i></a>
                                                <a href="#" class="js_tooltip" data-mode="top" data-tip="Quick&nbsp;View"><i class="fa fa-eye"></i></a>
                                            </div> -->
                                        </div>

                                        <div class="product-detail">

                                            <p class="product-title"><a
                                                    href="subCategoryDetail?categoryId=${categoryVariable.id }">${categoryVariable.categoryName}</a>
                                            </p>


                                        </div>

                                    </div>

                                    <!-- End Product Item-->
                                </div>

                            </c:forEach>
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
    <!-- OWL carousel js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
    <!-- Slick Slider js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/plugins-all.js"></script>
    <!-- Plugins All js -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/userResources/js/custom.js"></script>
    <!-- custom js -->
    <!-- end jquery -->
</body>
</html>
