<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi-VN"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart Laptop</title>

    <!-- Google Fonts -->
    <link href='<c:url value = "http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600"/>'
          rel='stylesheet' type='text/css'>
    <link href='<c:url value = "http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300"/>' rel='stylesheet'
          type='text/css'>
    <link href='<c:url value = "http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet"/>'
          type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/userWeb/css/bootstrap.min.css"/>">

    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/userWeb/css/font-awesome.min.css"/>">

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/css/editUser.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/userWeb/css/owl.carousel.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/userWeb/style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/view/userWeb/css/responsive.css"/>">

</head>
<body>

<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                        <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
                        <li><a href="cart.html"><i class="fa fa-user"></i> My Cart</a></li>
                        <li><a href="checkout.html"><i class="fa fa-user"></i> Checkout</a></li>
                        <li><a href="#"><i class="fa fa-user"></i> Login</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="header-right">
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span
                                    class="key">currency :</span><span class="value">USD </span><b
                                    class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">USD</a></li>
                                <li><a href="#">INR</a></li>
                                <li><a href="#">GBP</a></li>
                            </ul>
                        </li>

                        <li class="dropdown dropdown-small">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span
                                    class="key">language :</span><span class="value">English </span><b
                                    class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">English</a></li>
                                <li><a href="#">French</a></li>
                                <li><a href="#">German</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End header area -->

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="logo">
                    <h1><a href="./"><img src="<c:url value = "/view/img/logoshop.png"/>" style="width: 176px;"></a>
                    </h1>
                </div>
            </div>

            <div class="col-sm-6">
                <form action="/cart" method="get" class="shopping-item">
                    <input type="hidden" name="action" value="showCart">
                    <button type="submit">Cart
                        <i class="fa fa-shopping-cart"></i>
                        <%--                        <span class="product-count">5</span>--%>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="shop.html">Shop page</a></li>
                    <li><a href="single-product.html">Single product</a></li>
                    <li class="active"><a href="cart.html">Cart</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                    <li><a href="#">Category</a></li>
                    <li><a href="#">Others</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- End mainmenu area -->

<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Shopping Cart</h2>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Page title area -->


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <!--                <div class="col-md-4">-->
            <!--                    <div class="single-sidebar">-->
            <!--                        <h2 class="sidebar-title">Search Products</h2>-->
            <!--                        <form action="#">-->
            <!--                            <input type="text" placeholder="Search products...">-->
            <!--                            <input type="submit" value="Search">-->
            <!--                        </form>-->
            <!--                    </div>-->
            <!--                </div>-->

            <div class="col-md-12">
                <div class="product-content-right">
                    <div class="woocommerce">
                        <form method="post" action="#">
                            <table cellspacing="0" class="shop_table cart">
                                <thead>
                                <tr>
                                    <th class="product-remove">&nbsp;</th>
                                    <th class="product-thumbnail">&nbsp;</th>
                                    <th class="product-name">Product</th>
                                    <th class="product-price">Price</th>
                                    <th class="product-quantity">Quantity</th>
                                    <th class="product-subtotal">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${order.items}">
                                    <tr class="cart_item">
                                        <td class="product-remove">
                                            <a title="Remove this item" class="remove" href="#">×</a>
                                        </td>

                                        <td class="product-thumbnail">
                                            <a href="single-product.html"><img width="145" height="145"
                                                                               alt="poster_1_up"
                                                                               class="shop_thumbnail"
                                                                               src="${item.product.image}"></a>
                                        </td>

                                        <td class="product-name">
                                            <a href="#">${item.product.productName}</a>
                                        </td>

                                        <td class="product-price">
                                            <span class="amount"><fmt:formatNumber value="${item.price}"
                                                                                   type="currency"/></span>
                                        </td>

                                        <td class="product-quantity">
                                            <div class="quantity buttons_added">
                                                <input type="number" size="4" class="input-text qty text" title="Qty"
                                                       value="${item.quantity}">
                                            </div>
                                        </td>

                                        <td class="product-subtotal">
                                            <span class="amount"><fmt:formatNumber value="${item.totalPrice}"
                                                                                   type="currency"/></span>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td class="actions" colspan="6">
                                        <input type="submit" value="Thanh toán" name="proceed"
                                               class="checkout-button button alt wc-forward">
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </form>

                        <div class="cart-collaterals">

                            <!--                            <div class="cart_totals ">-->
                            <!--                                <h2>Cart Totals</h2>-->

                            <!--                                <table cellspacing="0">-->
                            <!--                                    <tbody>-->
                            <!--                                    <tr class="cart-subtotal">-->
                            <!--                                        <th>Cart Subtotal</th>-->
                            <!--                                        <td><span class="amount">£15.00</span></td>-->
                            <!--                                    </tr>-->

                            <!--                                    <tr class="shipping">-->
                            <!--                                        <th>Shipping and Handling</th>-->
                            <!--                                        <td>Free Shipping</td>-->
                            <!--                                    </tr>-->

                            <!--                                    <tr class="order-total">-->
                            <!--                                        <th>Order Total</th>-->
                            <!--                                        <td><strong><span class="amount">£15.00</span></strong></td>-->
                            <!--                                    </tr>-->
                            <!--                                    </tbody>-->
                            <!--                                </table>-->
                            <!--                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2>u<span>Stora</span></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam
                        laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure
                        eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis
                        magni at?</p>
                    <div class="footer-social">
                        <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">User Navigation </h2>
                    <ul>
                        <li><a href="#">My account</a></li>
                        <li><a href="#">Order history</a></li>
                        <li><a href="#">Wishlist</a></li>
                        <li><a href="#">Vendor contact</a></li>
                        <li><a href="#">Front page</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Categories</h2>
                    <ul>
                        <li><a href="#">Mobile Phone</a></li>
                        <li><a href="#">Home accesseries</a></li>
                        <li><a href="#">LED TV</a></li>
                        <li><a href="#">Computer</a></li>
                        <li><a href="#">Gadets</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-newsletter">
                    <h2 class="footer-wid-title">Newsletter</h2>
                    <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your
                        inbox!</p>
                    <div class="newsletter-form">
                        <form action="#">
                            <input type="email" placeholder="Type your email">
                            <input type="submit" value="Subscribe">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End footer top area -->

<div class="footer-bottom-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="copyright">
                    <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com"
                                                                      target="_blank">freshDesignweb.com</a></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="footer-card-icon">
                    <i class="fa fa-cc-discover"></i>
                    <i class="fa fa-cc-mastercard"></i>
                    <i class="fa fa-cc-paypal"></i>
                    <i class="fa fa-cc-visa"></i>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End footer bottom area -->

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="js/main.js"></script>
</body>
</html>
