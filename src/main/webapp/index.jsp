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
<body style="background-color:rgba(2, 2, 0, 0.1)" >

<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<div class="text-center p-4">
<h1 class="text-black ">Find Your Job Here</h1>

</div>
</div>


<div class="pt-4">
<h2 class="text-center text-dark">Top Jobs</h2>

<div class="container">
<div class="row">

<%
JobDAO dao= new JobDAO(DBConnect.getConn());
List<Job> list=dao.getAllJobforUser();
for (Job j : list){
%>

<div class="col-md-4">
<div class="card mt-3 border-0">

<div class="card-body">
<div class="text-left text-dark">
<div class="pl-2">
<h4><%=j.getTitle() %></h4>

<div class="form-col">
<div class="form-group row-md-4">
<p>Post : <%=j.getCategory() %></p>
</div>
<div class="form-group row-md-4">
<p><i class="fa-solid fa-location-dot"></i> <%=j.getLocation() %></p>
</div>
<div class="form-group row-md-4">
<p><i class="fa-solid fa-dollar-sign"></i> <%=j.getSalary() %></p>
</div>

</div>
<h6><i class="fa-solid fa-clock"></i> <%=j.getPublishdate().toString() %></h6>
</div>

 <div class="form-group row-md-4 pt-3">
  <span class="p-2 ml-2 bg-danger d-inline text-white border rounded-lg"><%=j.getTime() %></span>
<a href="detailView.jsp?id=<%=j.getId() %>" class="btn text-danger btn-sm float-right" style=background-color:transparent>Learn More <i class="fa-solid fa-arrow-right"></i></a>
</div></div></div>
</div>
</div>
<%
}
%>

</div>
</div>
</div>
</body>
</html>