<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="index.jsp">Online Job Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <c:if test="${userobj.role eq 'admin' }">
      <li class="nav-item">
        <a class="nav-link" href="add_job.jsp"><i class="fa-solid fa-plus"></i>Post job</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="view_jobs.jsp"><i class="fa-solid fa-eye"></i>View job</a>
      </li>
      </c:if>
    
    </ul>
    <form class="form-inline my-2 my-lg-0">
    
    <c:if test="${not empty userobj.role }">
     <a href="#" class="btn btn-dark mr-2"><i class="fa-regular fa-user"></i> admin</a>
     <a href="#" class="btn btn-dark"><i class="fa-solid fa-arrow-right-to-bracket"></i>Logout</a>
     </c:if>
     <c:if test="${ empty userobj.role }">
     <a href="login.jsp" class="btn btn-dark mr-2"><i class="fa-regular fa-user"></i> login</a>
     <a href="register.jsp" class="btn btn-dark"><i class="fa-solid fa-arrow-right-to-bracket"></i>signup</a>
     </c:if>
     
    </form>
  </div>
</nav>