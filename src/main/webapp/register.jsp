<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Here</title>
<%@include file="all_component/all_css.jsp" %>

</head>
<body style="background-color:#DBE8D8">

<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
<div class="row p-5">
<div class="col-md-4 offset-md-4"> 
<div class="card">
<div class="card-body">
<div class="text-center text-success">

<i class="fa-solid fa-user-plus fa-2x"></i>
<h4>Register Here</h4>
</div>
<form action="register" method="post">

<div class="form-group">
<label>Enter First Name</label> <input type="email" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="fname">
</div>
<div class="form-group">
<label>Enter Last Name</label> <input type="text" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="lname">
</div>

<div class="form-group">
<label>Enter Email</label> <input type="email" required="required" class="form-control" id="exampleInputEmail"
aria-describedby="emailHelp" name="email">
</div>

<div class="form-group">
<label for="exampleInputPassword1">Enter password</label> <input type="password" required="required" 
class="form-control" id="exampleInputPassword1" name="password">
</div>

<button type="submit"
class="btn btn-success badge-pill btn-block">Register</button>

</form>
</div>
</div>
</div>
</div>
</div>


</body>
</html>