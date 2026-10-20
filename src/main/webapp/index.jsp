<%-- 
    Document   : index
    Created on : Oct 18, 2026, 10:07:16 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="layout" tagdir="/WEB-INF/tags" %>
<layout:header title=""/>

<body class="bg-light d-flex flex-column min-vh-100">

    <!-- Hero -->
    <header class="bg-success  text-white">
        <div class="container py-5">
            <div class="row align-items-center g-5 py-lg-4">
                <div class="col-12 col-lg-7">
                    <h1 class="display-5 fw-bold mb-3">Your library, open any hour.</h1>
                    <p class="lead mb-4">
                        Search the catalogue, borrow and renew books, reserve the ones that are checked out,
                        and keep track of your due dates, all from one place.
                    </p>
                    <div class="d-flex flex-wrap gap-2">
                        <c:if test="${empty sessionScope.user}">
                            <a href="register.html" class="btn btn-light btn-lg">Join for free</a>
                        </c:if>
                        <a href="catalogue" class="btn btn-outline-light btn-lg">Browse the catalogue</a>
                    </div>
                </div>

            </div>
        </div>
    </header>

    <!-- Stats -->
    <section class="bg-white border-bottom">
        <div class="container py-4">
            <div class="row text-center g-3">
                <div class="col-6 col-md-4">
                    <p class="display-6 fw-bold text-success mb-0">16</p>
                    <p class="text-muted small mb-0">Titles in the catalogue</p>
                </div>
                <div class="col-6 col-md-4">
                    <p class="display-6 fw-bold text-success mb-0">4</p>
                    <p class="text-muted small mb-0">Subject categories</p>
                </div>
<!--                <div class="col-6 col-md-3">
                    <p class="display-6 fw-bold text-success mb-0">14</p>
                    <p class="text-muted small mb-0">Day loan period</p>
                </div>-->
                <div class="col-6 col-md-4">
                    <p class="display-6 fw-bold text-success mb-0">24/7</p>
                    <p class="text-muted small mb-0">Online access</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Features -->
    <section id="features" class="py-5">
        <div class="container">
            <div class="text-center mb-4">
                <h2 class="h3 mb-1">Everything you need to borrow books</h2>
                <p class="text-muted mb-0">Simple tools for members, built around how people actually use a library.</p>
            </div>

            <div class="row g-3">

                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card shadow-sm border-0 border-top border-success border-4 h-100">
                        <div class="card-body">
                            <h3 class="h5">Track your due dates</h3>
                            <p class="text-muted mb-0">See every book you have borrowed, what is due soon, and what is overdue, in one list.</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card shadow-sm border-0 border-top border-success border-4 h-100">
                        <div class="card-body">
                            <h3 class="h5">Stay informed</h3>
                            <p class="text-muted mb-0">The notice board shares opening hours, new arrivals, and changes to library rules.</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card shadow-sm border-0 border-top border-success border-4 h-100">
                        <div class="card-body">
                            <h3 class="h5">Manage your account</h3>
                            <p class="text-muted mb-0">Keep your contact details and password up to date from your profile page.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How it works -->
    <section id="how-it-works" class="py-5 bg-white border-top border-bottom">
        <div class="container">
            <div class="text-center mb-4">
                <h2 class="h3 mb-1">How it works</h2>
                <p class="text-muted mb-0">From sign up to your first book in three steps.</p>
            </div>

            <div class="row g-4 text-center">
                <div class="col-12 col-md-4">
                    <div class="rounded-circle bg-success text-white d-inline-flex align-items-center justify-content-center px-4 py-3 mb-3">
                        <span class="h3 fw-bold mb-0">1</span>
                    </div>
                    <h3 class="h5">Create an account</h3>
                    <p class="text-muted mb-0">Register with your email and phone number. It takes less than a minute.</p>
                </div>
                <div class="col-12 col-md-4">
                    <div class="rounded-circle bg-success text-white d-inline-flex align-items-center justify-content-center px-4 py-3 mb-3">
                        <span class="h3 fw-bold mb-0">2</span>
                    </div>
                    <h3 class="h5">Find your book</h3>
                    <p class="text-muted mb-0">Search or browse by category. Borrow it if it is available, or reserve it if not.</p>
                </div>
                <div class="col-12 col-md-4">
                    <div class="rounded-circle bg-success text-white d-inline-flex align-items-center justify-content-center px-4 py-3 mb-3">
                        <span class="h3 fw-bold mb-0">3</span>
                    </div>
                    <h3 class="h5">Read and return</h3>
                    <p class="text-muted mb-0">Enjoy your book, renew if you need more time, and return it by the due date.</p>
                </div>
            </div>
        </div>
    </section>

        <layout:footer/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>