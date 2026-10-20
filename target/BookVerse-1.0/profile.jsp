<%-- 
    Document   : user
    Created on : Oct 18, 2026, 10:08:42 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="layout" tagdir="/WEB-INF/tags" %>
<layout:auth/>

<jsp:useBean id="userDetails" class="com.bookverse.dto.userDTO" scope="request" />
<jsp:setProperty name="userDetails" property="*" />

<layout:header title="User" />

<body class="bg-light d-flex flex-column min-vh-100">

    <main class="container py-4">

        <div class="mb-4">
            <h1 class="h3 mb-1">My Profile</h1>
            <p class="text-muted mb-0">View your account details and keep your contact information up to date.</p>
        </div>


        <div class="alert alert-success d-none" role="alert">Your profile was updated.</div>
        <div class="alert alert-danger d-none" role="alert">Something went wrong. Please check the form and try again.</div>

        <div class="row g-4">

            <div class="col-12 col-lg-4">
                <div class="card shadow-sm border-0 border-top border-success border-4 mb-4">
                    <div class="card-body text-center p-4">
                        <div class="rounded-circle bg-success text-white d-inline-flex align-items-center justify-content-center p-4 mb-3">
                            <span class="display-5 fw-bold px-2">I</span>
                        </div>
                        <h2 class="h5 mb-1">${user.userName}</h2>
                        <span class="badge text-bg-success">${user.role}</span>
                    </div>

                    <div class="card-footer bg-white d-grid gap-2">
                        <a href="reservations" class="btn btn-outline-success btn-sm">View reservations</a>
                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-8">

                <div class="card shadow-sm border-0 mb-4">
                    <div class="card-header bg-white py-3">
                        <h2 class="h5 mb-0">Account details</h2>
                    </div>
                    <div class="card-body p-4">
                        <form action="profile" method="post">
                            <div class="row g-3">
                                <div class="col-12 col-md-6">
                                    <label for="username" class="form-label">Username</label>
                                    <input type="text" class="form-control" id="username" name="userName"
                                           value="<jsp:getProperty name='userDetails'  property='userName' />" readonly aria-describedby="usernameHelp">
                                    <div id="usernameHelp" class="form-text">Your username cannot be changed.</div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <label for="role" class="form-label">Role</label>
                                    <input type="text" class="form-control" id="role" name="role"
                                           value="<jsp:getProperty name='userDetails' property='role' />" readonly>
                                </div>
                                <div class="col-12 col-md-6">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                           value="<jsp:getProperty name="userDetails" property="email" />" autocomplete="email" required>
                                </div>
                                <div class="col-12 col-md-6">
                                    <label for="phone" class="form-label">Phone number</label>
                                    <input type="tel" class="form-control" id="phone" name="phone"
                                           value="<jsp:getProperty name='userDetails' property='mobile' />" autocomplete="tel" pattern="[0-9]{10}"
                                           aria-describedby="phoneHelp" required>
                                    <div id="phoneHelp" class="form-text">10 digits, for example 0771234567.</div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </main>
    <layout:footer/>
</body>
</html>