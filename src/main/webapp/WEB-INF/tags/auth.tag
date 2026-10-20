<%-- 
    Document   : auth
    Created on : Oct 20, 2026, 8:45:35 AM
    Author     : USER
--%>

<%@tag description="auth tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>

<c:if test="${empty sessionScope.user}">
    <jsp:forward page="login.jsp" />
</c:if>
