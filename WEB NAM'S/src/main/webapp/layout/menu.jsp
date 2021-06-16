<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar  navbar-expand nav-danger bg-white" style="height: 100px">
        <div class="container">
            <div class="logo" style="width: 100px;height: 100px">
                <a href="/home"><img src="/ustora/img/z3.jpg"><h4 align="center">HN Store</h4></a>

            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse col-menu" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> <a class="nav-link" href="/home">HOME </a> </li>
                    <li class="nav-item"><a class="nav-link" href="#"> NEW </a></li>

                    <li class="nav-item dropdown">
                        <a class="nav-link  dropdown-toggle" href="#" id="IPHONE" data-hover="dropdown" data-bs-toggle="dropdown" >IPHONE</a>
                        <div class="dropdown-menu" aria-labelledby="IPHONE">
                            <a class="dropdown-item" href="#">IPHONE 12</a>
                            <a class="dropdown-item" href="#">IPHONE 11</a>
                            <a class="dropdown-item" href="#">IPHONE X</a>
                            <a class="dropdown-item" href="#">IPHONE 8</a>
                            <a class="dropdown-item" href="#">IPHONE 7</a>
                        </div>

                    </li>

                    <li class="dropdown nav-item">
                        <a class="nav-link  dropdown-toggle" href="#"  id="IPAD" data-bs-toggle="dropdown" data-hover="dropdown">IPAD</a>
                        <div class="dropdown-menu" aria-labelledby="IPAD" >
                            <a class="dropdown-item" href="#">IPAD PRO</a>
                            <a class="dropdown-item" href="#">IPAD AIR</a>
                            <a class="dropdown-item" href="#">IPAD GEN 8</a>
                        </div>
                    </li>
                    <li class="dropdown nav-item">
                        <a class="nav-link  dropdown-toggle" href="#" id="WATCH" data-bs-toggle="dropdown" data-hover="dropdown">WATCH</a>
                        <div class="dropdown-menu" aria-labelledby="WATCH">
                            <a class="dropdown-item" href="#">SERIES 6</a>
                            <a class="dropdown-item" href="#">SERIES 5</a>
                            <a class="dropdown-item" href="#">SERIES 4</a>
                            <a class="dropdown-item" href="#">SERIES 3</a>
                            <a class="dropdown-item" href="#">SE</a>
                        </div>
                    </li>
                    <li class="dropdown nav-item">
                        <a class="nav-link  dropdown-toggle" href="#" id="MACBOOK" data-bs-toggle="dropdown" data-hover="dropdown">MACBOOK</a>
                        <div class="dropdown-menu" aria-labelledby="MACBOOK">
                            <a class="dropdown-item" href="#">MACBOOK AIR</a>
                            <a class="dropdown-item" href="#">MACBOOK PRO</a>
                            <a class="dropdown-item" href="#">IMAC</a>
                        </div>
                    </li>
                    <li class="dropdown nav-item">
                        <a class="nav-link  dropdown-toggle" href="#" id="ACCESORIES" data-bs-toggle="dropdown" data-hover="dropdown">ACCESORIES</a>
                        <div class="dropdown-menu" aria-labelledby="ACCESORIES">
                            <a class="dropdown-item" href="#">ADAPTER</a>
                            <a class="dropdown-item" href="#">TAI NGHE</a>
                            <a class="dropdown-item" href="#">ỐP LƯNG, BAO DA, DÁN MÀN HÌNH</a>
                            <a class="dropdown-item" href="#">PIN DỰ PHÒNG</a>
                            <a class="dropdown-item" href="#">lOA NGHE NHẠC</a>
                            <a class="dropdown-item" href="#">BÚT CẢM ỨNG</a>
                            <a class="dropdown-item" href="#">CHUỘT KHÔNG DÂY</a>
                            <a class="dropdown-item" class="dropdown-item" href="#">BÀN PHÍM</a>
                            <a href="#">APPLE TV 4K</a>
                        </div>
                    </li>
                </ul>
            </div> <!-- navbar-collapse.// -->
        </div> <!-- container-fluid.// -->
    </nav>

<jsp:include page="form-login.jsp"></jsp:include>
<jsp:include page="form-signup.jsp"></jsp:include>


