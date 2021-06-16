<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/10/2021
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <c:forEach var="p" items="${productList}">
                    <div class="col-md-3 col-sm-3 display_product">
                        <div class="single-product">
                            <div class="product-f-image">
                                <img style="height: 200px" src="${p.getPimage()}" alt="">
                            </div>
                            <h2><a href="">${p.getPname()}</a></h2>
                            <div class="product-carousel-price">
                                <ins>${p.getPrice()} D</ins>
                            </div>

                            <div class="product-option-shop">
                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/shop.jsp?add-to-cart=70">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="row" style="align-items: center">
            <div class="col-md-12 ">
                <div class="product-pagination text-center">
                    <nav>
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
