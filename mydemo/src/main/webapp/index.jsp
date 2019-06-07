<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>mydemo</title>
<head>
<%@ include file="head.jsp" %>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
<div class="container">
<h1>crud demo</h1>
<a href="${contextPath}/newUser"><h3>New User</h3></a><br/>
<h2>User Details</h2>
<%-- <label>${date}</label> --%>
<table>
  <thead>
    <th>ID</th>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>email</th>
    <th>password</th>
    <th>D.O.B</th>
    <th>Gender</th>
    <th colspan="2">Action</th>
  </thead>
  <tbody>
  <c:forEach items="${listUser}" var="user">
  <tr>
    <td>${user.id}</td>
    <td>${user.firstname}</td>
    <td>${user.lastname}</td>
    <td>${user.email}</td>
    <td>${user.password}</td>
    <td>${user.dob}</td>
    <td>${user.gender}</td>
    <td><a href="${contextPath}/editUser/${user.id}">Update</a></td>
    <td><a href="${contextPath}/deleteUser/${user.id}">Delete</a></td>
  </tr>
  </c:forEach>
  </tbody>
</table>

</div>
</body>
</html>