<%@page import="com.entity.Job"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs</title>
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

<div class="text-center text-success">
<i class="fa-solid fa-users fa-3x"></i>

<%
int id= Integer.parseInt(request.getParameter("id"));
JobDAO dao =new JobDAO(DBConnect.getConn());
Job j= dao.getJobById(id);
%>

<h4>Edit jobs</h4>

</div>
<form action="update" methods="get">
<input type="hidden" value="<%=j.getId() %>" name="id">
<div class="form-group">
<label>Enter title</label> <input type="text" name="title"
required class="form-control" value="<%=j.getTitle() %>">
</div>

<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label> <select name="Location"
class="custom-select" id="inlineFormCustomSelectPref">
<option value="<%=j.getLocation() %>"><%=j.getLocation() %></option>
<option value="kathmandu">Kathmandu</option>
<option value="chitwan">chitwan</option>
<option value="biratnagar">biratnagar</option>
<option value="pokhara">pokhara</option>
</select>
</div>

<div class="form-group col-md-4">
<label>Category</label> <select name="category"
class="custom-select" id="inlineFormCustomSelectPref">
<option  value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
<option value="Developer">Developer</option>
<option value="Banking">Banking</option>
<option value="Engineering">Engineering</option>
<option value="Teacher">Teacher</option>
</select>
</div>


<div class="form-group col-md-4">
<label>Status</label> <select name="status"
class="custom-select">
<option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
<option class="Active" value="Active">Active</option>
<option class="Inactive" value="Inactive">Inactive</option>

</select>
</div>

</div>
<div class="form-group">
<label>Enter Description</label>
<textarea rows="7" cols="" name="description" class="form-control"><%=j.getDescription() %>></textarea>
</div>
<button class="btn btn-success">Update Job</button>
</form>
</div></div></div></div>

</body>
</html>















