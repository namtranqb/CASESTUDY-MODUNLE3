<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header-area" style="height: 60px;font-size: 16px;color: #adadad">
    <div class="container">
        <div class="row" >
            <div class="col-sm-6">
                <div class="user-menu">
                    <ul >
                        <c:if test="${sessionScope.account != null}">
                            <li>Hello ${sessionScope.account.getUname()}</li>
                            <c:if test="${sessionScope.account.getAccess() != 0}">
                                <li><a href="management">Visit Management</a>
                                </li>
                            </c:if>

                            <li><a style="font-size: 16px;padding: 2px 10px;"  class="text-warning" href="logout"><i class="fa fa-user" ></i> Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account == null}">
                            <li><a style="font-size: 16px;padding: 2px 10px;cursor: pointer" class="text-success"  data-toggle="modal" data-target="#loginModal" ><i class="fa fa-user" onclick="clearDataForm()"></i>Login</a></li>
                            <li><a style="font-size: 16px;padding: 2px 10px;cursor: pointer" class="text-danger" data-toggle="modal" data-target="#registerModal"><i class="fa fa-user"></i>Sign Up</a></li>

                        </c:if>
                    </ul>
                </div>
            </div>

            <div class="col-sm-5">
                <div>
                    <form method="post" action="/search">
                        <jsp:include page="search.jsp"></jsp:include>
                    </form>

                </div>
            </div>
            <div class="col-sm-1">
                <div>
                    <a href="cart.jsp">Cart - <i class="fa fa-shopping-cart"></i><span class="product-count">5</span></a>
                </div>
            </div>
        </div>
    </div>
</div>
