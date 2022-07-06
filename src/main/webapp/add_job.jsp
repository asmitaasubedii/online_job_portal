<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Jobs</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:rgba(2, 2, 0, 0.1)">

<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<%@include file="all_component/navbar.jsp" %>

<div class="container p-3">
<div class="col-md-20 offset-md-0.5">
<div class="card">
<div class="card-body">

<div class="text-center text-info">
<i class="fa-solid fa-users fa-2x"></i>

<c:if test="${not empty succMsg }">
<div class="alert alert-success" role="alert">
${ succMsg}</div>
<c:remove var="succMsg"/>
</c:if>

<h4>Add jobs</h4>

</div>
<form action="add_job" methods="get">
<div class="form-group">
<label>Enter Job title</label> 
<input type="text" name="title" required class="form-control">
<label>Enter Email</label>
 <input type="email" name="email" required class="form-control">
</div>

<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label> <select name="Location"
class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose....</option>
<option value="kathmandu">kathmandu</option>
<option value="chitwan">chitwan</option>
<option value="biratnagar">biratnagar</option>
<option value="pokhara">pokhara</option>
</select>
</div>

<div class="form-group col-md-4">
<label>Category</label> <select name="category"
class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose....</option>
<option value="Developer">Developer</option>
<option value="Banking">Banking</option>
<option value="Engineering">Engineering</option>
<option value="Teacher">Teacher</option>
</select>
</div>
<div class="form-group col-md-4">
<label>Status</label> <select name="status"
class="custom-select">

<option value="Active">Active</option>
<option value="Inactive">Inactive</option>

</select>
</div>

<div class="form-group col-md-4">
<label>Time</label> <select name="time"
class="custom-select">

<option value="full-time">Full Time</option>
<option value="part-time">Part Time</option>

</select>
</div>
<div class="form-group col-md-4">
<label>Salary</label>
 <input type="text" name="salary" class="form-control">
</div>
<div class="form-group col-md-4">
<label>Experience</label>
 <input type="text" name="experience" class="form-control">
</div>


</div>
<div class="form-group">
<label>Enter Description</label>
<textarea rows="7"  name="description" class="form-control"></textarea>
</div>
<button class="btn btn-dark">Post Job</button>
</form>
</div></div></div></div>

</body>
</html>















