<header class="header">
            <!--Topbar-->
            <div class="header-topbar">
                <div class="header-topbar-inner">
                    <!--Topbar Left-->
                    <div class="topbar-left hidden-sm-down">
                        <div class="phone"><i class="fa fa-phone left" aria-hidden="true"></i>Customer Support : <b>+91 9426149721</b></div>
                    </div>
                    <!--End Topbar Left-->

                    <!--Topbar Right-->
                    <div class="topbar-right">
                        <ul class="list-none">
                            <li class="dropdown-nav">
                                <a href="login-register.html"><i class="fa fa-user left" aria-hidden="true"></i><span class="hidden-sm-down">My Account</span><i class="fa fa-angle-down right" aria-hidden="true"></i></a>
                                <!--Dropdown-->
                                <div class="dropdown-menu">
                                    <ul>
                                        <li><a href="login-register.jsp">My Account</a></li>
                                        <li><a href="#">Order History</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="checkout.jsp">Checkout</a></li>
                                    </ul>
                                    <span class="divider"></span>
                                    <ul>
                                        <li><a href="login-register.html"><i class="fa fa-lock left" aria-hidden="true"></i>Logout</a></li>
                                    </ul>
                                </div>
                                <!--End Dropdown-->
                            </li>
                            <li>
                                <a href="blog-single.jsp">Feedback</a>
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
                        

                        <!-- Sidebar Icon -->
                        <div class="sidebar-icon-nav">
                            <ul class="list-none-ib">
                                <!-- Search-->
                                <li><a id="search-overlay-menu-btn"><i aria-hidden="true" class="fa fa-search"></i></a></li>

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

                </div>
            </div>
            <!-- End Header Container -->
        </header>