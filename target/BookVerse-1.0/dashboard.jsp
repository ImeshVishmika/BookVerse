<%-- 
    Document   : user
    Created on : Oct 18, 2026, 10:08:42 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="layout" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="auth" tagdir="/WEB-INF/tags" %>
<auth:auth/>

<c:set var="userName" value="${sessionScope.user.userName}" scope="page" />

<layout:header title="User" />

<body class="bg-light">

    <main class="container py-4">

        <!-- Welcome + search -->
        <div class="card shadow-sm border-0 border-start border-success border-4 mb-4">
            <div class="card-body p-4">
                <h1 class="h3 mb-1">Welcome back ,${pageScope.userName} </h1>
            </div>
        </div>

        <!-- Summary -->
        <div class="row g-3 mb-4">
            <div class="col-12 col-md-4">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body">
                        <p class="text-muted mb-1">Books borrowed</p>
                        <p class="display-6 fw-bold text-success mb-0">3</p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body">
                        <p class="text-muted mb-1">Due within 3 days</p>
                        <p class="display-6 fw-bold text-danger mb-0">1</p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body">
                        <p class="text-muted mb-1">Active reservations</p>
                        <p class="display-6 fw-bold text-success mb-0">2</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-3 mb-4">
        <!-- Currently borrowed -->
            <div class="col-12 col-lg-8">
        <div class="card shadow-sm border-0 h-100">
            <div class="card-header bg-white d-flex justify-content-between align-items-center py-3">
                <h2 class="h5 mb-0">Currently borrowed</h2>
                <a href="borrowed" class="link-success small">View all</a>
            </div>
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="table-light">
                        <tr>
                            <th scope="col">Title</th>
                            <th scope="col">Author</th>
                            <th scope="col">Due date</th>
                            <th scope="col">Status</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Clean Code</td>
                            <td>Robert C. Martin</td>
                            <td>2026-10-20</td>
                            <td><span class="badge text-bg-danger">Due soon</span></td>
                            <td class="text-end"><a href="renew?id=1" class="btn btn-outline-success btn-sm">Renew</a></td>
                        </tr>
                        <tr>
                            <td>Head First Java</td>
                            <td>Kathy Sierra</td>
                            <td>2026-10-28</td>
                            <td><span class="badge text-bg-success">On time</span></td>
                            <td class="text-end"><a href="renew?id=2" class="btn btn-outline-success btn-sm">Renew</a></td>
                        </tr>
                        <tr>
                            <td>The Pragmatic Programmer</td>
                            <td>Andrew Hunt</td>
                            <td>2026-11-02</td>
                            <td><span class="badge text-bg-success">On time</span></td>
                            <td class="text-end"><a href="renew?id=3" class="btn btn-outline-success btn-sm">Renew</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
            </div>

            <!-- Notice board -->
            <div class="col-12 col-lg-4" id="notice-board">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-header bg-white d-flex justify-content-between align-items-center py-3">
                        <h2 class="h5 mb-0">Notice board</h2>
                        <a href="notice" class="link-success small">View all</a>
                    </div>
                    <div class="list-group list-group-flush">
                        <div class="list-group-item">
                            <div class="d-flex justify-content-between align-items-start">
                                <h3 class="h6 mb-1">Library closed on Poya day</h3>
                                <span class="badge text-bg-danger">Important</span>
                            </div>
                            <p class="small text-muted mb-1">The library will be closed on 2026-10-26. Books can still be renewed online.</p>
                            <p class="small text-muted mb-0">Posted 2026-10-16</p>
                        </div>
                        <div class="list-group-item">
                            <div class="d-flex justify-content-between align-items-start">
                                <h3 class="h6 mb-1">New arrivals in Programming</h3>
                                <span class="badge text-bg-success">News</span>
                            </div>
                            <p class="small text-muted mb-1">40 new titles added to the Programming and Databases shelves.</p>
                            <p class="small text-muted mb-0">Posted 2026-10-14</p>
                        </div>
                        <div class="list-group-item">
                            <div class="d-flex justify-content-between align-items-start">
                                <h3 class="h6 mb-1">Late fee change</h3>
                                <span class="badge text-bg-warning">Update</span>
                            </div>
                            <p class="small text-muted mb-1">From November, late fees apply after a 2-day grace period.</p>
                            <p class="small text-muted mb-0">Posted 2026-10-10</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- New arrivals -->
        <h2 class="h5 mb-3">New arrivals</h2>
        <div class="row g-3">
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body d-flex flex-column">
                        <span class="badge text-bg-success align-self-start mb-2">Programming</span>
                        <h3 class="h6">Effective Java</h3>
                        <p class="text-muted small">Joshua Bloch</p>
                        <a href="book?id=2" class="btn btn-outline-success btn-sm mt-auto">View details</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body d-flex flex-column">
                        <span class="badge text-bg-success align-self-start mb-2">Databases</span>
                        <h3 class="h6">Database System Concepts</h3>
                        <p class="text-muted small">Abraham Silberschatz</p>
                        <a href="book?id=7" class="btn btn-outline-success btn-sm mt-auto">View details</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body d-flex flex-column">
                        <span class="badge text-bg-success align-self-start mb-2">Networking</span>
                        <h3 class="h6">Computer Networking</h3>
                        <p class="text-muted small">James Kurose</p>
                        <a href="book?id=11" class="btn btn-outline-success btn-sm mt-auto">View details</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-body d-flex flex-column">
                        <span class="badge text-bg-success align-self-start mb-2">Management</span>
                        <h3 class="h6">The Mythical Man-Month</h3>
                        <p class="text-muted small">Frederick Brooks</p>
                        <a href="book?id=14" class="btn btn-outline-success btn-sm mt-auto">View details</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <layout:footer/>
</body>
</html>