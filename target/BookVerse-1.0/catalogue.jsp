<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<layout:header title="Catalogue" />


<main class="container py-4">
    
    <%-- Object bookList = pageContext.getAttribute("books",PageContext.REQUEST_SCOPE);
            pageContext.setAttribute("books", bookList,PageContext.PAGE_SCOPE);
                                                     OR           --%>
    
    <c:set var="books" value="${requestScope.books}" scope="page"/> 
    
    <section id="programming" class="mb-5">

        <div class="row g-3">
            <c:forEach var="book" items="${books}" >
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="card shadow-sm border-0 h-100">
                        <div class="card-body d-flex flex-column">
                            <span class="badge text-bg-success align-self-start mb-2">${book.value.availableCopies} copies available</span>
                            <h3 class="h6">${book.value.title}</h3>
                            <p class="text-muted small">${book.value.author}</p>
                            <div class="d-grid gap-2 mt-auto">
                                <a href="borrow?id=1" class="btn btn-success btn-sm">Reserve</a>
                                <a href="book?id=${book.value.id}" class="btn btn-outline-success btn-sm">View details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</main>


<layout:footer/>