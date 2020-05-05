
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Checkout</title>
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
                                <a href="#">Home</a>
                                <span>Checkout</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </section> -->
            <!-- Bread Crumb -->

            <!-- Page Content -->
            <section class="content-page">
             <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
            <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
                <div class="container mb-80">
                    <div class="row">
                        <div class="col-sm-12">
                            <article class="post-8">
                                
                                <form class="product-checkout mt-45">
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
                                                            <c:forEach items="${checkoutList}" var="checkoutVariable">
                                                                <tr class="cart_item product-${checkoutVariable.id}">

                                                                    <td class="product-name">${checkoutVariable.productVO.productName }<strong>
                                                                        x ${checkoutVariable.productQuantityBought }</strong>
                                                                    </td>
                                                                    <td class="product-total">
                                                                        <span class="product-price-amount amount">&#8377;<span
                                                                                class="sub-totals">${checkoutVariable.productVO.productPrice * checkoutVariable.productQuantityBought}</span></span>
                                                                    </td>

                                                                </tr>
                                                            </c:forEach>

                                                            </tbody>
                                                            <tfoot>

                                                            <tr class="order-total">
                                                                <th>Total</th>
                                                                <td>
                                                                    <span class="product-price-amount amount"><span
                                                                            class="currency-sign">&#8377;</span><span
                                                                            class="final_total"
                                                                            id="txn_amt"></span></span>
                                                                </td>
                                                            </tr>
                                                            </tfoot>
                                                        </table>
                                                    </div>

                                                    <div class="product-checkout-payment">
                                                        <ul>
                                                            <li>
                                                                <input id="payment_method_bacs" name="payment_method"
                                                                       value="bacs" checked="checked" type="radio"/>
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
                                                                <input id="payment_method_paypal" name="payment_method"
                                                                       value="paypal" type="radio"/>
                                                                <label for="payment_method_paypal">
                                                                    PayPal<img class="paypal-img"
                                                                               src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"/>
                                                                    <a href="https://www.paypal.com/gb/webapps/mpp/paypal-popup"
                                                                       onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;">What
                                                                        is PayPal?</a>
                                                                </label>
                                                            </li>
                                                        </ul>
                                                        <div class="place-order">
                                                            <a class="btn btn-lg btn-color form-full-width"
                                                               href="/user/payonline">Place Order</a>
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
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- End Footer Section -------------->

    </div>
    <!-- End wrapper =============================-->

    <!--==========================================-->
    <!-- JAVASCRIPT -->
    <!--==========================================-->
    <%--    <script type="text/javascript">--%>
    <%--        const USER_API_LINK = <%=request.getContextPath()%>'/api/user';--%>
    <%--    </script>--%>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/userResources/js/cart.js">
    </script>
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
