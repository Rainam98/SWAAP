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

	

    <!-- Overlay -->
    <div id="nlpopup_overlay"></div>
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
                                <a href="index">Home</a>
                                <a href="subCategoryDetail">Sub-Categories</a>
                                <span>Products</span>
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
                        <!-- Product Content -->
                        <div class="col-12">
                            <!-- Title -->
                            <div class="list-page-title">
                                <h2 class="">Products</h2>
                            </div>
                            <!-- End Title -->

                            <!-- Product Filter -->
                            <div class="product-filter-content">
                                <div class="product-filter-content-inner">

                                    <!--Product Filter Button-->
                                    <!-- <div class="product-filter-dropdown-btn "><a href="javascript:void(0)" data-toggle-target="filter-slide-toggle" class="btn btn-sm btn-gray slide-toggle-btn"><i class="fa fa-bars left" aria-hidden="true"></i>Filter</a></div> -->

                                    <!--Product Sort By-->
                                    <form class="product-sort-by">
                                        <label for="short-by">Sort By</label>
                                        <select name="short-by" id="short-by" class="nice-select-box">
                                            <option value="default_sorting" selected="selected">Default sorting</option>
                                            <!-- <option value="sort_by_popularity">Popularity</option>
                                            <option value="sort_by_average_rating">Average rating</option>
                                            <option value="sort_by_newness">New product</option> -->
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
                                        <div class="product-view-icon product-grid-switcher">
                                            <a class="" href=""><i class="fa fa-th" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="product-view-icon product-list-switcher product-view-icon-active">
                                            <a class="" href=""><i class="fa fa-th-list" aria-hidden="true"></i></a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- End Product Filter -->

                            <!-- Product filters Toggle-->
                            <div class="container product-filter-dropdown toggle-content" id="filter-slide-toggle">
                                <div class="row col mlr-0">

                                    <!-- End Shop Categories -->

                                    <!-- Filter Price -->
                                    <!-- <div class="widget-sidebar widget-filter-price col-sm-6 col-md-6 col-lg-3">
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
                                    </div> -->
                                    <!-- End Filter Price -->

                                    <!-- Filter Color -->
                                   
                                    <!-- End Filter Color -->

                                    <!-- Filter Size -->
                                    <
                                    <!-- End Filter Size -->
                                </div>
                            </div>
                            <!-- End Product filters Toggle-->

                            <!-- Product List -->
                            <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                            <div class="row product-list-item product-list-view">
                                <!-- item.1 -->
                                <c:forEach items="${productList}" var="productVariable">
                                <div class="product-item-element col-sm-6 col-md-6 col-lg-4">
                                    <!--Product Item-->
                                    <div class="product-item">
                                        <div class="product-item-inner">
                                            <div class="product-img-wrap">
                                              
                                                <img src="<%=request.getContextPath()%>/product/${productVariable.productFileName}" alt="">
                                            </div>
                                            <div class="product-button">

                                               <!--  <a href="#" class="js_tooltip1" data-mode="top" data-tip="Add To Whishlist"><i class="fa fa-heart1"></i></a> -->
                                               <a href="/user/addToCart?productId=${productVariable.id}" class="js_tooltip" data-mode="top" data-tip="Add to Cart"><i class="fa fa-shopping-bag"></i></a>

                                                
                                            </div>

                                        </div>
                                        <div class="product-detail">
                                            <a class="tag" href="#">${productVariable.categoryVO.categoryName}</a>
                                            <a class="tag" href="#">${productVariable.subCategoryVO.subCategoryName}</a>
                                            <p class="product-title"><a href="product_detail.html">${productVariable.productName}</a></p>
                                           <!--  <div class="product-rating">
                                                <div class="star-rating" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating" title="Rated 4 out of 5">
                                                    <span style="width: 60%"></span>
                                                </div>
                                                <a href="#" class="product-rating-count"><span class="count">3</span> Reviews</a>
                                            </div> -->
                                            <p class="product-description">
                                                ${productVariable.productDescription }
                                            </p>
                                            <h5 class="item-price">Rs. ${productVariable.productPrice }</h5>
                                        </div>
                                    </div>
                                    <!-- End Product Item-->
                                </div>
								</c:forEach>
                                
                            <!-- End Product List -->

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
                        <!-- <div class="sidebar-container col-md-3 pull-md-9">

                            Categories
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

                            Filter By Price
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

                            Filter By Color
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

                            Filter By Size
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

                            Filter By Tag
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
 -->
                           

                            <div class="widget-sidebar widget-banner">
                                <a href="#" class="banner-image-wrap">
                                    <img src="userResources/image/banner/banner_115146.jpg" alt="" />
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
