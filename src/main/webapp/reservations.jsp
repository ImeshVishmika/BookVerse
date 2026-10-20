<%-- 
    Document   : reservations
    Created on : Oct 18, 2026, 10:10:20 AM
    Author     : USER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags" %>

<c:set var="reservations" value="${requestScope.reservations}" />

<layout:header title="Reservations" />

<body class="bg-light d-flex flex-column min-vh-100">

    <main class="container py-4">

        <div class="mb-4">
            <h1 class="h3 mb-1">Book Reservations</h1>
            <p class="text-muted mb-0">Reserve a book that is currently checked out, and track your place in the queue.</p>
        </div>

        <div class="row g-4">

            <!-- Reserve form -->
            <div class="col-12 col-lg-4">
                <div class="card shadow-sm border-0 border-top border-success border-4 h-100">
                    <div class="card-body p-4">
                        <h2 class="h5 mb-1">Reserve a book</h2>
                        <p class="text-muted small mb-3">Only books with no copies available can be reserved.</p>

                        <form action="reserve" method="post">
                            <div class="mb-3">
                                <label for="bookId" class="form-label">Book</label>
                                <select class="form-select" id="bookId" name="bookId" required>
                                    <option value="" selected disabled>Choose a book</option>
                                    <option value="4">The Pragmatic Programmer, Andrew Hunt and David Thomas</option>
                                    <option value="9">High Performance MySQL, Baron Schwartz</option>
                                    <option value="12">TCP/IP Illustrated, Volume 1, W. Richard Stevens and Kevin Fall</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-success w-100">Reserve book</button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Reservation lists -->
            <div class="col-12 col-lg-8">
                <div class="card shadow-sm border-0">
                    <div class="card-header bg-white pt-3 pb-0">
                        <ul class="nav nav-tabs card-header-tabs" id="reservationTab" role="tablist">
                        </ul>
                    </div>

                    <div class="tab-content">

                        <div class="tab-pane fade show active" id="active" role="tabpanel" aria-labelledby="active-tab" tabindex="0">
                            <div class="table-responsive">
                                <table class="table table-hover align-middle mb-0">
                                    <thead class="table-light">
                                        <tr>
                                            <th scope="col">Title</th>
                                            <th scope="col">Reserved on</th>
                                            <th scope="col">Status</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="reservation" items="${reservations}">
                                            <tr class="table-success">
                                                <td>
                                                    <a href="book?id=10" class="link-dark fw-semibold">${reservation.title}</a>
                                                    <div class="small text-muted">${reservation.author}</div>
                                                </td>
                                                <td>${reservation.reservedDate}</td>
                                                <td>
                                                    <span class="badge text-bg-success">${reservation.status}</span>
                                                    <div class="small text-muted">Collect by ${reservation.pickupDeadline}</div>
                                                </td>
                                                <td class="text-end">
                                                    <a href="cancel-reservation?id=1" class="btn btn-outline-danger btn-sm">Cancel</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="past" role="tabpanel" aria-labelledby="past-tab" tabindex="0">
                            <div class="table-responsive">
                                <table class="table table-hover align-middle mb-0">
                                    <thead class="table-light">
                                        <tr>
                                            <th scope="col">Title</th>
                                            <th scope="col">Reserved on</th>
                                            <th scope="col">Closed on</th>
                                            <th scope="col">Outcome</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href="book?id=5" class="link-dark fw-semibold">Refactoring</a>
                                                <div class="small text-muted">Martin Fowler</div>
                                            </td>
                                            <td>2026-09-12</td>
                                            <td>2026-09-20</td>
                                            <td><span class="badge text-bg-secondary">Borrowed</span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="book?id=11" class="link-dark fw-semibold">Computer Networking: A Top-Down Approach</a>
                                                <div class="small text-muted">James Kurose and Keith Ross</div>
                                            </td>
                                            <td>2026-08-25</td>
                                            <td>2026-09-01</td>
                                            <td><span class="badge text-bg-secondary">Borrowed</span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="book?id=7" class="link-dark fw-semibold">Database System Concepts</a>
                                                <div class="small text-muted">Abraham Silberschatz</div>
                                            </td>
                                            <td>2026-08-02</td>
                                            <td>2026-08-09</td>
                                            <td><span class="badge text-bg-danger">Expired</span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="book?id=15" class="link-dark fw-semibold">Scrum: The Art of Doing Twice the Work in Half the Time</a>
                                                <div class="small text-muted">Jeff Sutherland</div>
                                            </td>
                                            <td>2026-07-20</td>
                                            <td>2026-07-22</td>
                                            <td><span class="badge text-bg-light border">Cancelled</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <layout:footer/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
