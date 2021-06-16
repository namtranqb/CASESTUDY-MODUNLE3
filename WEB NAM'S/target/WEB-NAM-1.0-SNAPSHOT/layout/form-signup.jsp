<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/8/2021
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal" name ="registerModal" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content ctnnn">
            <div class="modal-header border-bottom-0">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                </button>
            </div>
            <div class="form-title text-center">
                <h1 style="color: #0d6aad">Sign Up</h1>
            </div>
            <div class="modal-body">
                <c:if test='${message1 != null}'>
                    <div class="justify-content-center">
                        <div class="alert-danger">${message1}</div>
                    </div>
                </c:if>
                <div class="d-flex flex-column">
                    <form action="signup" method="post">
                        <div class="form-group">
                            <label for="username">Username: </label>
                            <input type="text" class="form-control" name="uname" id="username" value="${uname}" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password: </label>
                            <input type="password" class="form-control" name="password" id="password" required>
                        </div>
                        <div class="form-group">
                            <label for="confirm_password">Confirm Password: </label>
                            <input type="password" class="form-control" name="confirm_password" id="confirm_password" required >
                            <span id='message'></span>
                        </div>

                        <div class="form-group">
                            <label for="fullname">Fullname: </label>
                            <input type="text" class="form-control" name="fullname" id="fullname" value ="${fullname}" required>
                        </div>
                        <div class="form-group">
                            <label for="dob">Date Of Birth: </label>
                            <input type="date" class="form-control" name="dob"  value="${dob}" id="dob">
                        </div>
                        <div class="form-group">
                            <label for="email">Email: </label>
                            <input type="email" class="form-control" name="email" id="email" value="${email}" required>
                        </div>

                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
