<%-- 
    Document   : book
    Created on : Oct 18, 2026, 5:52:53 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags" %>


<%-- 
    Object bookDetails = pageContext.getAttribute("books",PageContext.REQUEST_SCOPE); 
    pageContext.setAttribute("book",bookDetails,PageContext.PAGE_SCOPE);
--%>

<c:set var="book" value="${requestScope.book}" scope="page" /> 

<layout:header title="${pageScope.book.title}" />

<body class="bg-light d-flex flex-column min-vh-100">

    <main class="container py-4">

        <!-- Breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="catalogue" class="link-success">Catalogue</a></li>
                <li class="breadcrumb-item"><a href="catalogue?category=Programming" class="link-success">${book.category}</a></li>
                <li class="breadcrumb-item active" aria-current="page">${book.title}</li>
            </ol>
        </nav>

        <div class="row g-4">

            <!-- Cover + actions -->
            <div class="col-12 col-md-4 col-lg-3">
                <div class="card shadow-sm border-0">
                    <div class="bg-success text-white d-flex flex-column justify-content-between px-3 pt-3 pb-5 rounded-top">
                        <span class="small">${book.category}</span>
                        <div>
                            <p class="h4 fw-bold mb-1">${book.title}</p>
                            <p class="small mb-0">${book.author}</p>
                        </div>
                    </div>
                    <div class="card-body d-grid gap-2">
                        <a href="borrow?id=1" class="btn btn-success">Reserve</a>
                        <a href="catalogue" class="btn btn-outline-secondary">Back to catalogue</a>
                    </div>
                </div>
            </div>

            <!-- Details -->
            <div class="col-12 col-md-8 col-lg-9">
                <div class="card shadow-sm border-0 border-top border-success border-4 mb-4">
                    <div class="card-body p-4">
                        <div class="d-flex flex-wrap justify-content-between align-items-start gap-2 mb-2">
                            <h1 class="h3 mb-0">${book.title}</h1>
                            <span class="badge text-bg-success fs-6">${book.availableCopies} of ${book.totalCopies} copies available</span>
                        </div>
                        <p class="text-muted mb-2">${book.author}</p>
                        <p class="mb-3">
                            <span class="text-warning" aria-hidden="true">&#9733;&#9733;&#9733;&#9733;&#9734;</span>
                            <span class="fw-semibold">${book.rating}</span> <span class="text-muted">/ 5</span>
                        </p>

                        <h2 class="h6">About this book</h2>
                        <p class="mb-0">
                           ${book.description}
                        </p>
                    </div>
                </div>

                <div class="card shadow-sm border-0">
                    <div class="card-header bg-white py-3">
                        <h2 class="h5 mb-0">Book information</h2>
                    </div>
                    <div class="table-responsive">
                        <table class="table align-middle mb-0">
                            <tbody>
                                <tr><th scope="row" class="w-50 text-muted fw-normal">Book ID</th><td>${book.id}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Title</th><td>${book.title}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Author</th><td>${book.author}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Category</th><td>${book.category}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Publisher</th><td>${book.publisher}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Published year</th><td>${book.publishedYear}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Total copies</th><td>${book.totalCopies}</td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Available copies</th><td><span class="badge text-bg-success">${book.availableCopies}</span></td></tr>
                                <tr><th scope="row" class="text-muted fw-normal">Rating</th><td>${book.rating} / 5</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

                                <layout:footer/>
</body>
</html>
