<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.entity.Job"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Jobs</title>
<%@include file="all_component/all_css.jsp" %>

</head>
<body style="background-color:rgba(2, 2, 0, 0.1)">
<%@include file="all_component/navbar.jsp" %>

<div class="container">
<div class="row">
<div class="col-md-12">
<h2 class="text-center text-success">All Jobs</h2>

<% 
JobDAO dao=new JobDAO(DBConnect.getConn());
List<Job> list=dao.getAllJob();
for(Job j:list){
%>

<div class="card mt-2">
<div class="card-body">
<div class="text-center text-primary text-success">
<i class="fa-solid fa-clipboard-list fa-2x"></i>
</div>

<h3><%=j.getTitle() %></h3>
<p><%=j.getDescription() %>></p>
<br>
<div class="form-row">

<div class="form-group col-md-4">
<input type="text" class="form-control form-control-sm" value="location:"<%=j.getLocation() %> readonly>
</div>

<div class="form-group col-md-4">
<input type="text" class="form-control form-control-sm" value="category:"<%=j.getCategory() %> readonly>
</div>

<div class="form-group col-md-4">
<input type="text" class="form-control form-control-sm" value="status:"<%=j.getStatus() %> readonly>
</div>

</div>

<h6>Pubish Date:<%=j.getPublishdate() %></h6>

<div class="text-center">
<a href="#" class="btn btn-sm bg-success text-white">Edit</a>
<a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
</div></div></div>
	
<%}
%>







</div></div></div></div></div>

</body>
</html>