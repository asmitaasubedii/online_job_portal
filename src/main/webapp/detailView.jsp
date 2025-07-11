
<%@page import="java.util.List"%>
<%@page import="com.entity.Job"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@page import ="java.sql.Connection" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Details</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:rgba(2, 2, 0, 0.1)">

<%@include file="all_component/navbar.jsp" %>

<div class="container">
<div class="row">
<%
int id= Integer.parseInt(request.getParameter("id"));
JobDAO dao =new JobDAO(DBConnect.getConn());
Job j= dao.getJobById(id);
%>

<div class="col-md-6">
<div class="card mt-5 border-0 ">
<div class="card-body">

<h4><%=j.getTitle() %></h4>
<div class="form-col">
  <div class="form-group row-md-4">
   <p>Field : <%=j.getCategory() %></p>
  </div>
  <div class="form-group row-md-4">
   <p>Employment Time : <%=j.getTime() %></p>
  </div>
  <div class="form-group row-md-4">
   <p>Salary : <%=j.getSalary() %></p>
  </div>
  <div class="form-group row-md-4">
   <p>Experience : <%=j.getExperience() %></p>
  </div>
  <div class="form-group row-md-4">
   <p>Field : <%=j.getCategory() %></p>
  </div>
</div>

  <h6><i class="fa-solid fa-clock"></i> <%=j.getPublishdate().toString() %></h6>
  <p><%=j.getDescription() %></p>
  

<a href="#" class="btn btn-danger float-left">Apply Job <i class="fa-solid fa-arrow-right"></i></a>
</div></div>
</div>
</div>

</div>


</body>
</html>