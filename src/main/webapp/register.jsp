<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Here</title>
<%@include file="all_component/all_css.jsp" %>

</head>
<body style="background-color:rgba(2, 2, 0, 0.1)">

<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3"> 
<div class="card">
<div class="card-body">
<div class="text-center text-info">

<i class="fa-solid fa-user-plus fa-2x"></i>
<h5>Register Here</h5>
</div>

<form action="register" method="get">

<div class="form-group">
<label>Enter First Name</label> <input type="text" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="fname">
</div>
<div class="form-group">
<label>Enter Last Name</label> <input type="text" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="lname">
</div>
<div class="form-group">
<label>Phone Number</label> <input type="number" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="pno">
</div>


<div class="form-group">
<label>Enter Email</label> <input type="email" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="email">
</div>

<div class="form-group">
<label for="exampleInputPassword1">Enter password</label> <input type="password" required="required" 
class="form-control" id="exampleInputPassword1" name="password">
</div>
<c:if test="${not empty succMsg }">
<h4 class="alert alert-success" role="alert">${ succMsg}</h4>
<c:remove var="succMsg"/>
</c:if>
<button type="submit"
class="btn btn-info badge-pill btn-block">Register</button>

</form>
</div>
</div>
</div>
</div>
</div>


</body>
</html>