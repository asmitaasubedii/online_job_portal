<%@page import ="com.DB.DBConnect" %>
<%@page import ="java.sql.Connection" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Job Portal</title>

<%@include file="all_component/all_css.jsp" %>
<style type="text/css">
.back-img{
background:url("img/bgindex1.jpg");
width:100%;
height:90vh;
background-repeat:no-repeat;
background-size:cover;
opacity: 0.8;
}
</style>

</head>
<body>

<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<div class="text-center p-4">
<h1 class="text-black ">Find Your Job Here</h1>
</div>
</div>


</body>
</html>