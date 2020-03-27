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
                    <ul class="cart-product-item" id="item-list">

                        <!-- Item -->
                        <%--                        <li>
                                                    <!--Item Image-->
                                                    <a href="#" class="product-image">
                                                        <img src="<%=request.getContextPath()%>/userResources/image/product-img/product_12547554.jpg" alt="" /></a>

                                                    <!--Item Content-->
                                                    <div class="product-content">
                                                        <!-- Item Linkcollateral -->
                                                        <a class="product-link" href="#">Alpha Block Black Polo T-Shirt</a>

                                                        <!-- Item Cart Totle -->
                                                        <div class="cart-collateral">
                                                            <span class="qty-cart">1</span>&nbsp;<span>&#215;</span>&nbsp;<span class="product-price-amount"><span class="currency-sign">&#8377;</span>399.00</span>
                                                        </div>

                                                        <!-- Item Remove Icon -->
                                                        <a class="product-remove" href="javascript:void(0)"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
                                                    </div>
                                                </li>--%>

                        <%--    <!-- Item -->
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
                                        <span class="qty-cart">2</span>&nbsp;<span>&#215;</span>&nbsp;<span class="product-price-amount"><span class="currency-sign">&#8377;</span>299.00</span>
                                    </div>

                                    <!-- Item Remove Icon -->
                                    <a class="product-remove" href="javascript:void(0)"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
                                </div>
                            </li>--%>

                    </ul>
                    <!-- End Cart Products -->

                </div>
            </div>
            <!-- End Cart Product Content -->

            <!-- Cart Footer -->
            <div class="cart-widget-footer">
                <div class="cart-footer-inner">

                    <!-- Cart Total -->
                    <h4 class="cart-total-hedding normal"><span>Total :</span>
                        <span class="cart-total-price">
                            <span
                                    class="currency-sign">&#8377;</span>
                            <span class="final_total"></span>
                        </span></h4>
                    <!-- Cart Total -->

                    <!-- Cart Buttons -->
                    <div class="cart-action-buttons">
                        <a href="viewCart" class="view-cart btn btn-md btn-gray">View Cart</a>
                        <a href="checkout" class="checkout btn btn-md btn-color">Checkout</a>
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
                <input value="" name="q" type="search" placeholder="Search..."/>
                <button type="submit">
                    <img src="<%=request.getContextPath()%>/userResources/image/search-lg-go-icon.png" alt=""/>
                </button>
            </form>
            <!-- End Search Form -->

        </div>
    </section>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/userResources/js/cart.js">
</script>
<script>

    function viewCartProducts() {
        fetch(<%=request.getContextPath()%>"/api/user/viewCart").then(response => response.json())
            .then(res => {
                let itemList = document.getElementById("item-list");
                itemList.innerText = "";
                let total = 0.0;
                for (let i = 0; i < res.length; i++) {
                    total += res[i]['productVO']['productPrice'] * res[i]['productQuantityBought'];
                    itemList.innerHTML += "<li class=\"product-" + res[i]['id'] + "\">\n" +
                        "<input type=\"hidden\" id=\"cart-" + res[i]['id'] + "\" value=\"" + parseFloat(res[i]['productVO']['productPrice']) * res[i]['productQuantityBought'] + "\">" +
                        "                            <!--Item Image-->\n" +
                        "                            <a href=\"#\" class=\"product-image\">\n" +
                        "                                <img src=\"<%=request.getContextPath()%>" + "/product/" + res[i]['productVO']['productFileName'] + "\" alt=\"\" /></a>\n" +
                        "\n" +
                        "                            <!--Item Content-->\n" +
                        "                            <div class=\"product-content\">\n" +
                        "                                <!-- Item Linkcollateral -->\n" +
                        "                                <a class=\"product-link\" href=\"#\"> " + res[i]['productVO']['productName'] + "</a>\n" +
                        "\n" +
                        "                                <!-- Item Cart Totle -->\n" +
                        "                                <div class=\"cart-collateral\">\n" +
                        "                                    <span class=\"qty-cart\">" + res[i]['productQuantityBought'] + "</span>&nbsp;<span>&#215;</span>&nbsp;<span class=\"product-price-amount\"><span class=\"currency-sign\">&#8377;</span>" + res[i]['productVO']['productPrice'] + "</span>\n" +
                        "                                </div>\n" +
                        "\n" +
                        "                                <!-- Item Remove Icon -->\n" +
                        "                                <a class=\"product-remove\" href=\"javascript:removeElementFromCart('product'," + res[i]['id'] + ")\"><i class=\"fa fa-times-circle\" aria-hidden=\"true\"></i></a>\n" +
                        "                            </div>\n" +
                        "                        </li>"
                }
                [].forEach.call(document.getElementsByClassName('final_total'), e => e.innerHTML = total);
            });
    }
</script>