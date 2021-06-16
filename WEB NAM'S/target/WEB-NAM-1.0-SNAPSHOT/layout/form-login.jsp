<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/8/2021
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal" id="loginModal" name="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content ctnnn">
            <div class="modal-header border-bottom-0">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-title text-center">
                    <h1 style="color: #0d6aad">Login</h1>
                </div>
                <div class="justify-content-center">
                    <c:if test='${message2!=null}'>
                        <div class="alert-success">${message2}</div>
                    </c:if>
                    <c:if test='${message!=null}'>
                        <div class="alert-danger">${message}</div>
                    </c:if>
                </div>
                <div class="d-flex flex-column">
                    <form method="post" action="login">
                        <div class="form-group">
                            <label for="username">Username: </label>
                            <input type="text" class="form-control" name="uname" id="username"   value="${username}" placeholder="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password: </label>
                            <input type="password" class="form-control"  name="password" id="password" value="${pass}" placeholder="Your password...">
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>

                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <div class="signup-section">Not a member yet? <button type="button" class="btn btn-outline-danger"  role="dialog" data-target="#registerModal">
                    Sign Up
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
