<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <title>NAM'S</title>--%>
<%--    <jsp:include page="layout/head.jsp"></jsp:include>--%>

<%--</head>--%>
<%--<body>--%>

<%--<jsp:include page="layout/header-area.jsp"></jsp:include> <!-- End header area -->--%>

<%--<jsp:include page="layout/branding-area.jsp"></jsp:include><!-- End site branding area -->--%>

<%--<jsp:include page="layout/menu.jsp"></jsp:include> <!-- End mainmenu area -->--%>

<%--<jsp:include page="layout/slide-area.jsp"></jsp:include> <!-- End slider area -->--%>

<%--<div class="promo-area">--%>
<%--    <div class="zigzag-bottom"></div>--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-3 col-sm-6">--%>
<%--                <div class="single-promo promo1">--%>
<%--                    <i class="fa fa-refresh"></i>--%>
<%--                    <p>30 Days return</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-3 col-sm-6">--%>
<%--                <div class="single-promo promo2">--%>
<%--                    <i class="fa fa-truck"></i>--%>
<%--                    <p>Free shipping</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-3 col-sm-6">--%>
<%--                <div class="single-promo promo3">--%>
<%--                    <i class="fa fa-lock"></i>--%>
<%--                    <p>Secure payments</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-3 col-sm-6">--%>
<%--                <div class="single-promo promo4">--%>
<%--                    <i class="fa fa-gift"></i>--%>
<%--                    <p>New products</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div> <!-- End promo area -->--%>

<%--<div class="maincontent-area">--%>
<%--    <div class="zigzag-bottom"></div>--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-12">--%>
<%--                <div class="latest-product">--%>
<%--                    <h2 class="section-title">Latest Products</h2>--%>

<%--                    <div class="product-carousel">--%>

<%--                        <c:forEach var="p" items="${listP}">--%>
<%--                            <div class="single-product">--%>
<%--                                <div class="product-f-image">--%>
<%--                                    <img style="height: 270px" src=${p.pimage} alt="">--%>
<%--                                    <div class="product-hover">--%>
<%--                                        <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>--%>
<%--                                        <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                                <h2>${p.pname}</h2>--%>

<%--                                <div class="product-carousel-price">--%>
<%--                                    <ins>${p.price} D</ins>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>

<%--                        <div class="single-product">--%>
<%--                            <div class="product-f-image">--%>
<%--                                <img src="ustora/img/product-2.jpg" alt="">--%>
<%--                                <div class="product-hover">--%>
<%--                                    <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>--%>
<%--                                    <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <h2>Nokia Lumia 1320</h2>--%>
<%--                            <div class="product-carousel-price">--%>
<%--                                <ins>$899.00</ins> <del>$999.00</del>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="single-product">--%>
<%--                            <div class="product-f-image">--%>
<%--                                <img src="ustora/img/product-3.jpg" alt="">--%>
<%--                                <div class="product-hover">--%>
<%--                                    <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>--%>
<%--                                    <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <h2>LG Leon 2015</h2>--%>

<%--                            <div class="product-carousel-price">--%>
<%--                                <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="single-product">--%>
<%--                            <div class="product-f-image">--%>
<%--                                <img src="ustora/img/product-4.jpg" alt="">--%>
<%--                                <div class="product-hover">--%>
<%--                                    <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>--%>
<%--                                    <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <h2><a href="single-product.jsp">Sony microsoft</a></h2>--%>

<%--                            <div class="product-carousel-price">--%>
<%--                                <ins>$200.00</ins> <del>$225.00</del>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="single-product">--%>
<%--                            <div class="product-f-image">--%>
<%--                                <img src="ustora/img/product-5.jpg" alt="">--%>
<%--                                <div class="product-hover">--%>
<%--                                    <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>--%>
<%--                                    <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <h2>iPhone 6</h2>--%>

<%--                            <div class="product-carousel-price">--%>
<%--                                <ins>$1200.00</ins> <del>$1355.00</del>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="single-product">--%>
<%--                            <div class="product-f-image">--%>
<%--                                <img src="ustora/img/product-6.jpg" alt="">--%>
<%--                                <div class="product-hover">--%>
<%--                                    <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>--%>
<%--                                    <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>--%>

<%--                            <div class="product-carousel-price">--%>
<%--                                <ins>$400.00</ins>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<%--<div class="brands-area">--%>
<%--    <div class="zigzag-bottom"></div>--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-12">--%>
<%--                <div class="brand-wrapper">--%>
<%--                    <div class="brand-list">--%>
<%--                        <img src="ustora/img/brand1.png" alt="">--%>
<%--                        <img src="ustora/img/brand2.png" alt="">--%>
<%--                        <img src="ustora/img/brand3.png" alt="">--%>
<%--                        <img src="ustora/img/brand4.png" alt="">--%>
<%--                        <img src="ustora/img/brand5.png" alt="">--%>
<%--                        <img src="ustora/img/brand6.png" alt="">--%>
<%--                        <img src="ustora/img/brand1.png" alt="">--%>
<%--                        <img src="ustora/img/brand2.png" alt="">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div> <!-- End brands area -->--%>

<%--<div class="product-widget-area">--%>
<%--    <div class="zigzag-bottom"></div>--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-4">--%>
<%--                <div class="single-product-widget">--%>
<%--                    <h2 class="product-wid-title">Top Sellers</h2>--%>
<%--                    <a href="" class="wid-view-more">View All</a>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-1.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Sony Smart TV</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-2.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Apple new mac book</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-3.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Apple new i phone 6</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4">--%>
<%--                <div class="single-product-widget">--%>
<%--                    <h2 class="product-wid-title">Recently Viewed</h2>--%>
<%--                    <a href="#" class="wid-view-more">View All</a>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-4.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Sony playstation microsoft</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-1.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Sony Smart Air Condtion</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-2.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4">--%>
<%--                <div class="single-product-widget">--%>
<%--                    <h2 class="product-wid-title">Top New</h2>--%>
<%--                    <a href="#" class="wid-view-more">View All</a>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-3.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Apple new i phone 6</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-4.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Samsung gallaxy note 4</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-wid-product">--%>
<%--                        <a href="single-product.jsp"><img src="ustora/img/product-thumb-1.jpg" alt="" class="product-thumb"></a>--%>
<%--                        <h2><a href="single-product.jsp">Sony playstation microsoft</a></h2>--%>
<%--                        <div class="product-wid-rating">--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                            <i class="fa fa-star"></i>--%>
<%--                        </div>--%>
<%--                        <div class="product-wid-price">--%>
<%--                            <ins>$400.00</ins> <del>$425.00</del>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div> <!-- End product widget area -->--%>

<%--<jsp:include page="layout/footer.jsp"></jsp:include> <!-- End footer bottom area -->--%>

<%--<jsp:include page="layout/script.jsp"></jsp:include>--%>
<%--</body>--%>
<%--</html>--%>