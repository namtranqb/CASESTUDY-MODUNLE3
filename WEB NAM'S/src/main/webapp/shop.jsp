<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html lang="en">
  <head>
      <title>Product</title>
      <jsp:include page="layout/head.jsp"></jsp:include>
      <style>
          .display_product{
              height: 350px;
              margin-bottom: 20px;
              border-radius: 10px;
              border: 1px solid gainsboro;
              margin-left: 20px;
              padding-top: 10px;
          }
          .menu-search{
              width: 100%;
              display: flex;
              justify-content: space-around;
          }
          .menu-head{
              width: 60%;
          }

      </style>
  </head>
  <body>
    <!-- End site branding area -->
    <div class="container menu-search">
        <div class="menu-head">
            <jsp:include page="layout/menu.jsp"></jsp:include>
        </div>
    </div>
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Product</h2>
                    </div>
                    <c:if test="${productList != null}">
                        <jsp:include page="layout/list-product.jsp"></jsp:include>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"></jsp:include>
   
    <jsp:include page="layout/script.jsp"></jsp:include>
  </body>
</html>