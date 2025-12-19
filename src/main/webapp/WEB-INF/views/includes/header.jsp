<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Admin Panel</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-custom px-4">
	  <a class="navbar-brand" href="/">Eclipse Project</a>
	  <div class="collapse navbar-collapse">
	  	<ul class="navbar-nav me-auto">
	  		<li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
	  		<li class="nav-item"><a class="nav-link" href="#">Users</a></li>
	  		<li class="nav-item"><a class="nav-link" href="#">Settings</a></li>
	  	</ul>
	  	<span class="navbar-text">
	  	  <c:choose>
	  	  	<c:when test="${pageContext.request.userPrincipal.name != null}">
	  	  		<strong>${pageContext.request.userPrincipal.name}</strong> | <a href="/account/logout" class="text-white text-decoration-underline">Logout</a>
	  	  	</c:when>
	  	  	<c:otherwise>
	  	  		<a href="/account/login" class="text-white text-decoration-underline">Login</a>
	  	  	</c:otherwise>
	  	  </c:choose>
	  	</span>
	  </div>
	</nav>
	
	<div class="main-wrapper">
	  <div class="sidebar pt-3">
	  	<div class="list-group list-group-flush">
	  	  <a href="#" class="list-group-item active">Dashboard</a>
	  	  <a href="#" class="list-group-item">Analytics</a>
	  	  <a href="#" class="list-group-item">User list</a>
	  	  <a href="#" class="list-group-item">Roles</a>
	  	  <a href="#" class="list-group-item">System Logs</a>
	  	</div>
	  </div>
	  
	  <div class="content">