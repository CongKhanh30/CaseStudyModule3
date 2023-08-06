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
    <title>Only Laptop</title>

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
<%--    <script src="<c:url value = "https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"/>"></script>--%>
<%--    <script src="<c:url value = "https://oss.maxcdn.com/respond/1.4.2/respond.min.js"/>"></script>--%>

</head>
<body>

<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                        <li><a href="checkout.html"><i class="fa fa-user"></i> ${user.username}</a></li>
                        <li><a href="user?action=logout"><i class="fa fa-user"></i> Logout </a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="header-right">
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
                    <li><a href="http://localhost:8080/home?action=getAllLogged">Home</a></li>
                    <li><a href="#">Shop page</a></li>
                    <li><a href="#">Single product</a></li>
                    <li class="active"><a href="http://localhost:8080/cart?action=showCart">Cart</a></li>
                    <li><a href="#">Checkout</a></li>
                    <li><a href="#">Category</a></li>
                    <li><a href="#">Others</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- End mainmenu area -->

<div class="slider-area">
    <!-- Slider -->
    <div class="block-slider block-slider4">
        <ul class="" id="bxslider-home4">
            <li>
                <img src="<c:url value = "/view/userWeb/img/header/h1.jpg"/>" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        ACER <span class="primary">NITRO <strong>16</strong></span>
                    </h2>
                    <h4 class="caption subtitle">Laptop Gaming 2023</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                </div>
            </li>
            <li><img src="<c:url value = "/view/userWeb/img/header/h2.jpg"/>" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Dell <span class="primary">Vostro <strong>5630</strong></span>
                    </h2>
                    <h4 class="caption subtitle">Văn phòng và học tập</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                </div>
            </li>
            <li><img src="<c:url value = "/view/userWeb/img/header/h3.jpg"/>" alt="Slide">
                <div class="caption-group">
                    <h2 class="caption title">
                        Lenovo<span class="primary">ThinkBook <strong>14</strong></span>
                    </h2>
                    <h4 class="caption subtitle">Học tập và giải trí</h4>
                    <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                </div>
            </li>
        </ul>
    </div>
    <!-- ./Slider -->
</div> <!-- End slider area -->

<div class="promo-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo1">
                    <i class="fa fa-refresh"></i>
                    <p>30 Đổi trả</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo2">
                    <i class="fa fa-truck"></i>
                    <p>Miễn phí ship</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo3">
                    <i class="fa fa-lock"></i>
                    <p>Thanh toán an toàn</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo4">
                    <i class="fa fa-gift"></i>
                    <p>Sản phẩm mới</p>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End promo area -->

<div class="maincontent-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="latest-product">
                    <h2 class="section-title">Latest Products</h2>
                    <div class="product-carousel">
                        <c:forEach var="product" items="${productList}" begin="1" end="5">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="${product.image}"
                                         alt="">
<%--                                    <div class="product-hover">--%>
                                        <form action="/addToCart">
                                            <input type="hidden" name="action" value="addToCart">
                                            <input type="hidden" name="quantity" value="1">
                                            <input type="hidden" name="productId" value="${product.productId}">
                                                <%--                                            <input type="hidden" name="idUser" value="${idUser}">--%>
                                            <button type="submit" style="width: 100%;">
                                                <i class="fa fa-shopping-cart"></i> Add to
                                                cart
                                            </button>
                                        </form>
<%--                                        <a href="single-product.html" class="view-details-link"><i--%>
<%--                                                class="fa fa-link"></i>--%>
<%--                                            See details</a>--%>
<%--                                    </div>--%>
                                </div>

                                <h2><a href="single-product.html">${product.productName}</a></h2>

                                <div class="product-carousel-price">
                                    <ins><fmt:formatNumber value="${product.price}" type="currency"/></ins>
                                        <%--                                    <del>$100.00</del>--%>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End main content area -->

<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Shop</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <c:forEach var="product" items="${productList}">
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <img src="${product.image}"
                                 alt="">
                        </div>
                        <h2><a href="">${product.productName}</a></h2>
                        <div class="product-carousel-price">
                            <ins><fmt:formatNumber value="${product.price}" type="currency"/></ins>
                                <%--                            <del>$999.00</del>--%>
                        </div>

                        <div class="product-option-shop">
                            <form action="/addToCart">
                                <input type="hidden" name="action" value="addToCart">
                                <input type="hidden" name="productId" value="${product.productId}">
                                    <%--                                            <input type="hidden" name="idUser" value="${idUser}">--%>
                                <button type="submit" style="width: 60%;">
                                    <i class="fa fa-shopping-cart"></i> Add to
                                    cart
                                </button>
                            </form>
<%--                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"--%>
<%--                               rel="nofollow" href="/canvas/shop/?add-to-cart=70">Add to cart</a>--%>
                        </div>
                    </div>
                </div>
            </c:forEach>
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
                    <p>Sign up to our newsletter and get exclusive deals you won`t find anywhere else straight to your
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
<script src="<c:url value = "https://code.jquery.com/jquery.min.js"/>"></script>

<!-- Bootstrap JS form CDN -->
<script src="<c:url value = "http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"/>"></script>

<!-- jQuery sticky menu -->
<script src="<c:url value = "/view/userWeb/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value = "/view/userWeb/js/jquery.sticky.js"/>"></script>

<!-- jQuery easing -->
<script src="<c:url value = "/view/userWeb/js/jquery.easing.1.3.min.js"/>"></script>

<!-- Main Script -->
<script src="<c:url value = "/view/userWeb/js/main.js"/>"></script>

<!-- Slider -->
<script type="text/javascript" src="<c:url value = "/view/userWeb/js/bxslider.min.js"/>"></script>
<script type="text/javascript" src="<c:url value = "/view/userWeb/js/script.slider.js"/>"></script>
</body>
</html>
