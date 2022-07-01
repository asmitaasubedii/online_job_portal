<%@page import="com.dao.JobDAO"%>
<%@page import ="com.DB.DBConnect" %>
<%@page import ="java.sql.Connection" %>
<%@page import="com.entity.Job"%>
<%@page import="java.util.List"%>



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
<body style="background-color:rgba(2, 2, 0, 0.1)">

<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<div class="text-center p-4">
<h1 class="text-black ">Find Your Job Here</h1>
</div>
</div>
<div class="container">
<div class="row">
<div class="col-md-5">
<%
JobDAO dao= new JobDAO(DBConnect.getConn());
List<Job> list=dao.getAllJobforUser();
for (Job j : list){
%>
<div class="card mt-3">
<div class="card-body">
<div class="text-left text-dark">

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

</div>

<h6>Pubish Date:<%=j.getPublishdate().toString() %></h6>

<div class="text-left">

<a href="one_view.jsp" class="btn btn-sm bg-dark text-white">View More</a>
</div></div></div>
	</div>
<%}
%>

</div>
</div>

</div></div>


</body>
</html>