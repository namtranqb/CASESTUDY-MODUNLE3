<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="error.jsp" %>
<jsp:include page="management-layout/head.jsp"></jsp:include>
<body>
<div class="wrapper">
    <div class="main-header">
        <div class="logo-header">
            <img style="height: 60px;width: 60px;margin-left: 70px" src="ustora/img/z3.jpg">
            <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse"
                    data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon">${sessionScope.account.uname}</span>
            </button>
            <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
        </div>
        <nav class="navbar navbar-header navbar-expand-lg">
            <div class="container-fluid">

                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                    <li class="nav-item dropdown hidden-caret">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="la la-envelope"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown hidden-caret">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="la la-bell"></i>
                            <span class="notification">3</span>
                        </a>
                        <ul class="dropdown-menu notif-box" aria-labelledby="navbarDropdown">
                            <li>
                                <div class="dropdown-title">You have 4 new notification</div>
                            </li>
                            <li>
                                <div class="notif-center">
                                    <a href="#">
                                        <div class="notif-icon notif-primary"><i class="la la-user-plus"></i></div>
                                        <div class="notif-content">
												<span class="block">
													New user registered
												</span>
                                            <span class="time">5 minutes ago</span>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="notif-icon notif-success"><i class="la la-comment"></i></div>
                                        <div class="notif-content">
												<span class="block">
													Rahmad commented on Admin
												</span>
                                            <span class="time">12 minutes ago</span>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="notif-img">
                                            <img src="assets/img/profile2.jpg" alt="Img Profile">
                                        </div>
                                        <div class="notif-content">
												<span class="block">
													Reza send messages to you
												</span>
                                            <span class="time">12 minutes ago</span>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="notif-icon notif-danger"><i class="la la-heart"></i></div>
                                        <div class="notif-content">
												<span class="block">
													Farrah liked Admin
												</span>
                                            <span class="time">17 minutes ago</span>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <a class="see-all" href="javascript:void(0);"> <strong>See all notifications</strong> <i
                                        class="la la-angle-right"></i> </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
                            <img src="assets/img/profile.jpg" alt="user-img" width="36" class="img-circle"></span> </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                <div class="user-box">
                                    <div class="u-img"><img src="assets/img/profile.jpg" alt="user"></div>
                                    <div class="u-text">
                                        <h4>Welcome ${sessionScope.account.uname}</h4>
                                        <a href="/management?action=showProfile"
                                           class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                </div>
                            </li>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#"><i class="ti-email"></i> Inbox</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/management.jsp"><i class="fa fa-power-off"></i> Logout</a>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="sidebar">
        <div class="scrollbar-inner sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="assets/img/profile.jpg">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									<span class="user-level">${sessionScope.account.uname}</span>
									<span class="caret"></span>
								</span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample" aria-expanded="true" style="">
                        <ul class="nav">
                            <li>
                                <a href="/management?action=showProfile">
                                    <span class="link-collapse">My Profile</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav">
                <li class="nav-item">
                    <a href="/management">
                        <i class="la la-dashboard"></i>
                        <p>HOME</p>
                    </a>

                </li>
                <li class="nav-item">
                    <a href="/home">
                        <i class="la la-dashboard"></i>
                        <p>VISIT WEBSITE</p>
                    </a>
                </li>

                <li class="nav-item dropdown">
                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle nav-link" href="/management?action=product">
                        <i class="la la-th la-table"></i>
                        PRODUCT
                    </a>
                    <ul class="dropdown-menu">
                        <c:forEach items="${sessionScope.loadCategory}" var="c">
                            <li><a class="dropdown-item" href="/product?action=filter&cname=${c.cname}">${c.cname}</a></li>
                        </c:forEach>
                    </ul>

                </li>
                <li class="nav-item">
                    <a href="/management?action=account">
                        <i class="la la-th la-table"></i>
                        <p>ACCOUNT</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/management?action=category">
                        <i class="la la-th la-table"></i>
                        <p>CATEGORY</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#">
                        <i class="la la-bell"></i>
                        <p>NOTIFICATIONS</p>
                        <span class="badge badge-success">3</span>
                    </a>
                </li>

            </ul>
        </div>
    </div>
    <div class="main-panel">
        <div class="content">
            <div class="container-fluid">
                <h4 class="page-title"></h4>
                <div class="row">
                    <table class="table table-hover">
                        <c:if test="${sessionScope.account.uname.equals('admin') && message != null }">
                            <div class="row row-card-no-pd">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <p class="fw-bold mt-1">My Balance</p>
                                            <h4><b>$ 3,018</b></h4>
                                            <a href="#" class="btn btn-primary btn-full text-left mt-3 mb-3"><i
                                                    class="la la-plus"></i> Add Balance</a>
                                        </div>
                                        <div class="card-footer">
                                            <ul class="nav">
                                                <li class="nav-item"><a class="btn btn-default btn-link" href="#"><i
                                                        class="la la-history"></i> History</a></li>
                                                <li class="nav-item ml-auto"><a class="btn btn-default btn-link"
                                                                                href="#"><i class="la la-refresh"></i>
                                                    Refresh</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Profit</span>
                                                    <span class="text-muted fw-bold"> $3K</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-success" role="progressbar"
                                                         style="width: 78%" aria-valuenow="78" aria-valuemin="0"
                                                         aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                                         title="78%"></div>
                                                </div>
                                            </div>
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Orders</span>
                                                    <span class="text-muted fw-bold"> 576</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-info" role="progressbar"
                                                         style="width: 65%" aria-valuenow="60" aria-valuemin="0"
                                                         aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                                         title="65%"></div>
                                                </div>
                                            </div>
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Tasks Complete</span>
                                                    <span class="text-muted fw-bold"> 70%</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                         style="width: 70%" aria-valuenow="70" aria-valuemin="0"
                                                         aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                                         title="70%"></div>
                                                </div>
                                            </div>
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Open Rate</span>
                                                    <span class="text-muted fw-bold"> 60%</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-warning" role="progressbar"
                                                         style="width: 60%" aria-valuenow="60" aria-valuemin="0"
                                                         aria-valuemax="100" data-toggle="tooltip" data-placement="top"
                                                         title="60%"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats">
                                        <div class="card-body">
                                            <p class="fw-bold mt-1">Statistic</p>
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center icon-warning">
                                                        <i class="la la-pie-chart text-warning"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Number</p>
                                                        <h4 class="card-title">150GB</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr/>
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-heart-o text-primary"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Followers</p>
                                                        <h4 class="card-title">+45K</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <c:if test="${productList != null}">
                            <h3><em>Product Management</em></h3>


                            <div class="div-form ">
                                <form method="get" action="product">
                                    <jsp:include page="layout/search.jsp"></jsp:include>
                                </form>

                                <div>
                                    <form method="get" action="product">
                                        <input type="hidden" name="action" value="createProduct">
                                        <button class="btn btn-primary bt" type="submit">New Product</button>
                                    </form>
                                </div>

                                <div>
                                    <form action="management">
                                        <input type="hidden" name="action" value="reset">
                                        <button class="btn btn-secondary bt" type="submit">Reset</button>
                                    </form>

                                </div>
                            </div>
                            <tr>
                                <th>PCode</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Image</th>
                                <th>Color</th>
                                <th>Action</th>
                            </tr>
                            <c:forEach var="p" items="${productList}">
                                <tr>
                                    <td><c:out value="${p.pcode}"/></td>
                                    <td><c:out value="${p.pname}"/></td>
                                    <td><c:out value="${p.price}"/></td>
                                    <td><c:out value="${p.quantity}"/></td>
                                    <td><img style="height: 100px;width: 100px" src="${p.getPimage()}"></td>
                                    <td><c:out value="${p.color}"/></td>
                                    <td>
                                        <a class="btn btn-outline-warning" href="/product?action=editProduct&pid=${p.pid}">Edit</a>
                                        <a class="btn btn-outline-danger" onclick="deleteConfirm(${p.pid})">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${createP != null}">
                            <jsp:include page="management-form/createProduct.jsp"></jsp:include>
                        </c:if>
                        <c:if test="${editP != null}">
                            <jsp:include page="management-form/editProduct.jsp"></jsp:include>
                        </c:if>

                        <c:if test="${categoryList != null}">
                            <div class="container-fluid">
                                <h3><em>Category Management</em></h3>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <table class="table">
                                            <div class="div-form">
                                                <jsp:include page="layout/search.jsp"></jsp:include>
                                                <div>
                                                    <form method="post">
                                                        <input type="hidden" name="action" value="createCategory">
                                                        <button class="btn btn-primary bt" type="submit">New Category
                                                        </button>
                                                    </form>
                                                </div>

                                                <div>
                                                    <form action="/management" method="post">
                                                        <input type="hidden" name="action" value="reset">
                                                        <button class="btn btn-secondary bt" type="submit">Reset
                                                        </button>
                                                    </form>

                                                </div>
                                            </div>
                                            <tr>
                                                <th>Category Code</th>
                                                <th>Category Name</th>
                                                <th>Action</th>
                                            </tr>
                                            <c:forEach var="c" items="${categoryList}">
                                                <tr>

                                                    <td><c:out value="${c.cid}"/></td>
                                                    <td><c:out value="${c.cname}"/></td>
                                                    <td>
                                                        <a href="/management?action=editCategory&cid=${c.cid}">Edit</a>
                                                        <a href="/management?action=deleteCategory&cid=${c.cid}">Delete</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </table>

                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                    </div>

                                </div>
                            </div>

                        </c:if>

                        <c:if test="${userList != null}">
                            <h3><em>User Management</em></h3>

                            <div class="div-form">
                                <jsp:include page="layout/search.jsp"></jsp:include>
                                <div>
                                    <form method="post">
                                        <input type="hidden" name="action" value="createAccount">
                                        <button class="btn btn-primary bt" type="submit">New Account</button>
                                    </form>
                                </div>

                                <div>
                                    <form action="/management" method="post">
                                        <input type="hidden" name="action" value="reset">
                                        <button class="btn btn-secondary bt" type="submit">Reset</button>
                                    </form>

                                </div>
                            </div>
                            <tr>

                                <th>Code</th>
                                <th>Account Name</th>
                                <th>Fullname</th>
                                <th>Date Of Birth</th>
                                <th>Email</th>
                                <th>Image</th>
                                <th>Access</th>
                                <th>Action</th>

                            </tr>
                            <c:forEach var="u" items="${userList}">
                                <tr>

                                    <td><c:out value="${u.uid}"/></td>
                                    <td><c:out value="${u.uname}"/></td>
                                    <td><c:out value="${u.fullname}"/></td>
                                    <td><c:out value="${u.dob}"/></td>
                                    <td><c:out value="${u.email}"/></td>
                                    <td><img style="height: 100px;width: 100px" src="${u.getUimage()}"></td>
                                    <td><c:out value="${u.access}"/></td>
                                    <td>
                                        <a href="/management?action=editAccount&uid=${u.uid}">Edit</a>
                                        <a href="/management?action=deleteAccount&uid=${u.uid}">Delete</a>
                                        <a href="/management?action=resetPassword&uid=${u.uid}">Reset Password</a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </c:if>

                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>

<script type="text/javascript">
    function deleteConfirm(id) {
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'

                ).then(window.location = "/product?action=deleteProduct&pid="+ id)
            }
        })
    }



</script>
<jsp:include page="management-layout/modal.jsp"></jsp:include>
<jsp:include page="management-layout/bottom.jsp"></jsp:include>
</html>