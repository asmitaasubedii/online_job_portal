<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body>

<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid">
<div class="text-center">
<h1 class="text-white p-4">Welcome Admin</h1>
</div>
</div>
<h1>Welcome Admin</h1>
</body>
</html>