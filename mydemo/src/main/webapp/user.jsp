<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>
<meta charset="ISO-8859-1">
<title>User Forms</title>

</head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
<div class="container">
<h1>User Form</h1>
  <form  action="${contextPath}/saveUser" name="userForm" method="POST">
    <div class="form-group">
	    <label for="firstname" class="mb-2 mr-sm-2">First Name:</label>
	    <input type="text" class="form-control" id="firstname" placeholder="Enter first name" name="firstname">
     </div>
     <div class="form-group">
	    <label for="lastname" class="mb-2 mr-sm-2">Last Name:</label>
	    <input type="text" class="form-control" id="lastname" placeholder="Enter last name" name="lastname">
    </div>
    <div class="form-group">
	    <label for="email" class="mb-2 mr-sm-2">Email:</label>
	    <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
     </div>
     <div class="form-group">
	    <label for="password" class="mb-2 mr-sm-2">Password:</label>
	    <input type="text" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
    <div class="form-group">
	    <label for="dob" class="mb-2 mr-sm-2">Date Of Birth:</label>
	    <input type="text" class="form-control " id="dob" placeholder="MM/DD/YYY" name="dob">
     </div>
     <div class="form-group">
	    <label for="Gender" class="mb-2 mr-sm-2">Gender:</label>
	    <input type="radio"  name="gender" id="gender" value="male"> Male
  		<input type="radio"  name="gender" id="gender" value="female">Female<br>
    </div>
        
 	<br/>
	<button type="submit" class="btn btn-primary mb-2">Submit</button>
  
  </form>

</div>

<script>
$(document).ready(function(){
    var date_input=$('input[name="dob"]'); //our date input has the name "date"
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    var options={
      format: 'mm/dd/yyyy',
      container: container,
      todayHighlight: true,
      autoclose: true,
    };
    date_input.datepicker(options);
  })
</script>
</body>
</html>