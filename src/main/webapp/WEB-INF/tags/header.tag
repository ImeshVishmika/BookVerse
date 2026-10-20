<%-- 
    Document   : header
    Created on : Oct 19, 2026, 12:38:50 PM
    Author     : USER
--%>

<%@tag description="header" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title" required="true" type="java.lang.String" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title} | Online Library Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<jsp:include page="header.jsp" >
    <jsp:param name="userName" value="${sessionScope.user.userName}" />
</jsp:include>