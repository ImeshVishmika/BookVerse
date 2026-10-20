<%-- 
    Document   : header
    Created on : Oct 18, 2026, 2:01:04 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container">
            <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}" >Online Library Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mainNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <c:if test="${not empty sessionScope.user}">
                        <li class="nav-item"><a class="nav-link active" href="dashboard.jsp">Home</a></li>
                        </c:if>
                        <c:if test="${sessionScope.user.role == 'admin'}">
                        <li class="nav-item"><a class="nav-link" href="members">Members</a></li>
                        </c:if>
                         <li class="nav-item"><a class="nav-link" href="catalogue">Catalogue</a></li>
                        <c:if test="${not empty sessionScope.user}">
                          <li class="nav-item"><a class="nav-link" href="borrowed">Borrowed</a></li>
                         </c:if>
                         <c:if test="${ not empty sessionScope.user}" >
                             <li class="nav-item"><a class="nav-link" href="reservations">Reservations</a></li>
                         </c:if>
                         <li class="nav-item"><a class="nav-link" href="notice">Notice Board</a></li>
                         <c:if test="${ not empty sessionScope.user}" >
                             <li class="nav-item"><a class="nav-link" href="profile">Profile</a></li>
                         </c:if>
                </ul>

                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <div class="d-flex align-items-center gap-3">
                            <span class="navbar-text text-white">Hello, <strong>${param.userName}</strong></span>
                            <a href="logout" class="btn btn-outline-light btn-sm">Logout</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="d-flex gap-2">
                            <a href="login.jsp" class="btn btn-outline-light btn-sm">Login</a>
                            <a href="register.jsp" class="btn btn-light btn-sm">Register</a>
                        </div>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
    </nav>
</header>