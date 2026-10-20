<%-- 
    Document   : borrowed
    Created on : Oct 18, 2026, 2:57:20 PM
    Author     : USER
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<layout:header title="Borrowed"/>

<body class="bg-light d-flex flex-column min-vh-100">

    <main class="container py-4">

        <div class="mb-4">
            <h1 class="h3 mb-1">My Books</h1>
            <p class="text-muted mb-0">Books you have borrowed</p>
        </div>

        <!-- Tabs -->
        <div class="card shadow-sm border-0">
            <div class="card-header bg-white pt-3 pb-0">
                <ul class="nav nav-tabs card-header-tabs" id="booksTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active link-success" id="current-tab" data-bs-toggle="tab"
                                data-bs-target="#current" type="button" role="tab"
                                aria-controls="current" aria-selected="true">Currently borrowed</button>
                    </li>
                </ul>
            </div>

            <div class="tab-content">

                <!-- Currently borrowed -->
                <div class="tab-pane fade show active" id="current" role="tabpanel" aria-labelledby="current-tab" tabindex="0">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th scope="col">Title</th>
                                    <th scope="col">Author</th>
                                    <th scope="col">Borrowed on</th>
                                    <th scope="col">Due date</th>
                                    <th scope="col">Status</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="book" items="${borrowed}">
                                    <tr>
                                        <td><a href="book?id=6" class="link-dark fw-semibold">${book. title}</a></td>
                                        <td>${book. author}</td>
                                        <td>${book.borrowDate}</td>
                                        <td>${book.dueDate}</td>
                                        <c:choose>
                                            <c:when test = "${ book.dueDate < now and book.status != 'RETURNED' }">
                                                <td><span class="badge text-bg-danger">Overdue</span></td>
                                            </c:when>
                                            <c:when test = "${book.status== 'RETURNED'}" >
                                                <td><span class="badge text-bg-success">${book.status}</span></td>
                                                </c:when>
                                                <c:otherwise>
                                                <td><span class="badge text-bg-secondary ">${book.status}</span></td>
                                                </c:otherwise>
                                            </c:choose>
                                    </tr>
                                </c:forEach>
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
