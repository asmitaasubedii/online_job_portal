<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Jobs</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:#DBE8D8">
<%@include file="all_component/navbar.jsp" %>

<div class="container p-4">
<div class="col-md-20 offset-md-0.5">
<div class="card">
<div class="card-body">

<div class="text-center text-success">
<i class="fa-solid fa-users fa-3x"></i>
<h4>Add jobs</h4>

</div>
<form action="addJobs"methods="post">
<div class="form-group">
<label>Enter title</label> <input type="text" name="title"
required class="form-control">
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

</div>
<div class="form-group">
<label>Enter Description</label>
<textarea rows="7" cols="" name="description" class="form-control"></textarea>
</div>
<button class="btn btn-success">Post Job</button>
</form>
</div></div></div></div>

</body>
</html>















