<%-- 
    Document   : noticeboard
    Created on : Oct 20, 2026, 1:09:22 PM
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="layout"  tagdir="/WEB-INF/tags"%>

<layout:header title="Notice Board"/>

<c:set var="notices" value="${requestScope.notice}" scope="page" />

<body class="bg-light d-flex flex-column min-vh-100">

    <!-- Page header -->
    <header class="bg-white border-bottom">
        <div class="container py-4">
            <h1 class="h3 mb-1">Notice Board</h1>
            <p class="text-muted mb-3">Announcements, opening hours, events, and changes to library rules.</p>
        </div>
    </header>

    <main class="container py-4">
        <div class="row g-4">

            <!-- Notices -->
            <div class="col-12 col-lg-8">

                <div class="d-grid gap-3">

                    <c:forEach var="notice" items="${notices}">
                        
                        <c:choose>
                            <c:when test="${notice.type=='important'}">
                                <c:set var="color" value="danger"/>
                            </c:when>
                            <c:when test="${notice.type=='update'}">
                                <c:set var="color" value="warning"/>
                            </c:when>
                            <c:otherwise>
                                <c:set var="color" value="success"/>
                            </c:otherwise>
                        </c:choose>
                        
                        <div class="card shadow-sm border-0 border-start border-${pageScope.color} border-4">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-start gap-2 mb-1">
                                    <h2 class="h5 mb-0">${notice.title}</h2>
                                    <span class="badge text-bg-${pageScope.color}">${notice.type}</span>
                                </div>
                                <p class="text-muted small mb-2">${notice.message}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <!-- Sidebar -->
            <div class="col-12 col-lg-4">

                <div class="card shadow-sm border-0 border-top border-success border-4 mb-4">
                    <div class="card-header bg-white py-3">
                        <h2 class="h5 mb-0">Opening hours</h2>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex justify-content-between"><span>Monday to Friday</span><span class="fw-semibold">8:00 AM to 6:00 PM</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>Saturday</span><span class="fw-semibold">9:00 AM to 2:00 PM</span></li>
                        <li class="list-group-item d-flex justify-content-between"><span>Sunday</span><span class="fw-semibold">Closed</span></li>
                    </ul>
                    <div class="card-footer bg-white small text-muted">Online access is available 24/7.</div>
                </div>
            </div>
        </div>
    </main>

    <layout:footer/>
</body>
</html>
