<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>NAM'S</title>
    <jsp:include page="layout/head.jsp"></jsp:include>
    <script>
        function clearDataForm() {
            $('input').val('');
        }
    </script>
</head>
<body>
<jsp:include page="layout/header-area.jsp"></jsp:include>
<jsp:include page="layout/menu.jsp"></jsp:include> <!-- End mainmenu area -->
<jsp:include page="layout/slide-area.jsp"></jsp:include> <!-- End slider area -->

<div class="promo-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo1">
                    <i class="fa fa-refresh"></i>
                    <p>30 Days return</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo2">
                    <i class="fa fa-truck"></i>
                    <p>Free shipping</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo3">
                    <i class="fa fa-lock"></i>
                    <p>Secure payments</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo promo4">
                    <i class="fa fa-gift"></i>
                    <p>New products</p>
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
                    <h2 class="section-title">New Products</h2>

                    <div class="product-carousel">
                        <c:forEach var="p" items="${listP}">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img style="height: 270px" src="${p.pimage}" alt="">
                                    <div class="product-hover">
                                        <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>

                                <h2>${p.pname}</h2>

                                <div class="product-carousel-price">
                                    <ins>${p.price} D</ins>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="brands-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="brand-wrapper">
                    <div class="brand-list">
                        <img src="ustora/img/brand4.png" alt="">
                        <img src="ustora/img/brand4.png" alt="">
                        <img src="ustora/img/brand4.png" alt="">
                        <img src="ustora/img/brand4.png" alt="">
                        <img src="ustora/img/brand4.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End brands area -->



<jsp:include page="layout/footer.jsp"></jsp:include> <!-- End footer bottom area -->

<jsp:include page="layout/script.jsp"></jsp:include>




<script>
    $(document).ready(function() {
        <c:if test='${message != null}'>
            $('#loginModal').modal('show');
        </c:if>
        <c:if test='${message2 != null}'>
        $('#loginModal').modal('show');
        </c:if>
        <c:if test='${message1 != null}'>
            $('#registerModal').modal('show');
        </c:if>
        });
</script>

</body>
</html>