<%@page import="com.entity.Job"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User : Home</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body>
<body style="background-color:rgba(2, 2, 0, 0.1)">
<%@include file="all_component/navbar.jsp" %>
<div class="container">
<div class="row">
<div class="col-md-12">
<h2 class="text-center text-dark">All Jobs</h2>
<div class="card">
<div class="card-body">

 <form action="form-inline" action="more_view.jsp" method="get">
<div class="form-row">
<div class="form-group col-md-5 mt-1">
<h5>Location</h5>
</div>

<div class="form-group col-md-4 mt-1">
<h5>Category</h5>
</div>

<div class="form-group col-md-5">
 <select name="Location"class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose....</option>
<option value="kathmandu">kathmandu</option>
<option value="chitwan">chitwan</option>
<option value="biratnagar">biratnagar</option>
<option value="pokhara">pokhara</option>
</select>
</div>

<div class="form-group col-md-5">
<select name="category"class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose....</option>
<option value="Developer">Developer</option>
<option value="Banking">Banking</option>
<option value="Engineering">Engineering</option>
<option value="Teacher">Teacher</option>
</select>
</div>
<div class="text-center">
<button class="btn btn-sm bg-dark text-white mt-1">Submit</button>
</form>
</div></div></div></div>

<%
JobDAO dao= new JobDAO(DBConnect.getConn());
List<Job> list=dao.getAllJobforUser();
for (Job j : list){
%>
<div class="card mt-2">
<div class="card-body">
<div class="text-center text-primary">
</div>
<h6><%=j.getTitle() %></h6>
<%
if(j.getDescription().length()> 0 && j.getDescription().length()<120){
%>
	<p><%=j.getDescription() %></p>
	<%
}else{
	%>
	<p><%=j.getDescription().substring(0,120) %></p>
<% } %>

<div class="form-row">

<div class="form-group col-md-4">
<input type="text" class="form-control form-control-sm" value="<%=j.getLocation() %>" readonly>
</div>

<div class="form-group col-md-4">
<input type="text" class="form-control form-control-sm" value="<%=j.getCategory() %>" readonly>
</div>

<div class="form-group col-md-4">
<input type="text" class="form-control form-control-sm" value="<%=j.getStatus() %>" readonly>
</div>

</div>

<h6>Pubish Date:<%=j.getPublishdate().toString() %></h6>

<div class="text-center">

<a href="one_view.jsp" class="btn btn-sm bg-dark text-white">View More</a>
<a href="one_view.jsp" class="btn btn-sm bg-dark text-white">Apply For Job</a>
</div></div>
	
<%}
%>

</div>
</div>

</div></div></div>
</body>
</html>