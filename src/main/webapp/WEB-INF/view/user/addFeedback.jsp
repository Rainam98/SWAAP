
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
     <link href="<%=request.getContextPath()%>/userResources/css/themify-icons.css" rel="stylesheet" type="text/css" />
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
	<style type="text/css">
.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:2em;
    padding:0 .01em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: ' ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}
</style>
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
            <!-- End Cart Product Content -->

            
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
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
            <!-- Page Content -->
            <section class="content-page">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div  class="map style1 mb-45">
                             <h2 class="normal"><span>Contact Us</span></h2>
                            <f:form class="Contact-form" action="insertFeedback" modelAttribute="feedbackVO" method="post">
                                <div class="form-field-wrapper">
                                    <label>Feedback <span class="required">*</span></label>
                                    <f:input path="feedback" id="author" class="input-md form-full-width" name="author" placeholder=" Enter Your Feedback (required)" value="" size="30" aria-required="true" required="" type="text"/>
                                </div>
                                <div class="form-field-wrapper">
                                    <label>Rating <span class="required">*</span></label>
                                    <div class="rating">			
										<f:radiobutton id="star5" path="rating" value="5" /><label for="star5" title="Rocks!"><span class="ti-star "></span></label>
										<f:radiobutton id="star4" path="rating" value="4" /><label for="star4" title="Pretty good"><span class="ti-star"></span></label>
								    	<f:radiobutton id="star3" path="rating" value="3" /><label for="star3" title="Meh"><span class="ti-star"></span></label>
								   		<f:radiobutton id="star2" path="rating" value="2" /><label for="star2" title="Kinda bad"><span class="ti-star"></span></label>
								    	<f:radiobutton id="star1" path="rating" value="1" /><label for="star1" title="Sucks big time"><span class="ti-star"></span></label>
						    		</div>
                                </div>
                                <div class="form-field-wrapper">
                                    <input name="submit" id="submit" class="submit btn btn-md btn-color" value="Submit" type="submit">
                                </div>
                            </f:form>
                            </div>
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
    <script type="text/javascript" src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>
    <!-- Map js -->
    <!-- end jquery -->

</body>
</html>
