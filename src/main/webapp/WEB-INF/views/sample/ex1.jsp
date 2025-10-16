<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewpoint" content="width=device-width, initial-scale=1.0"/>
<title>Admin Panel</title>
<link href="https://cdn.jsdelivr.net/npm/bootsrap@5.3.3/dist/css/bootsrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-custom px-4">
	  <a class="navbar-brand" href="#">AdminPanel</a>
	  <div class="collapse navbar-collapse">
	  	<ul class="navbar-nav me-auto">
	  		<li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
	  		<li class="nav-item"><a class="nav-link" href="#">Users</a></li>
	  		<li class="nav-item"><a class="nav-link" href="#">Settings</a></li>
	  	</ul>
	  	<span class="navbar-text">
	  	  Logged in as <strong>admin</strong> | <a href="#" class="text-white text-decoration-underline">Logout</a>
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
	    <h3>User Management</h3>
	    <div class="table-responsive my-3">
	      <table class="table table-bordered table-hover align-middle">
	        <thead class="table-dark">
	          <tr>
	          	<th>#</th>
	          	<th>Username</th>
	          	<th>Email</th>
	          	<th>Status</th>
	          	<th>Joined</th>
	          	<th>Actions</th>
	          </tr>
	        </thead>
	        <tbody>
	          <tr>
	          	<td>1</td>
	          	<td>john_doe</td>
	          	<td>john@example.com</td>
	          	<td><span class="badge bg-success">Active</span></td>
	          	<td>2023-07-12</td>
	          	<td>
	          	  <button class="btn btn-sm btn-primary">Edit</button>
	          	  <button class="btn btn-sm btn-danger">Delete</button>
	          	</td>
	          </tr>
	        </tbody>
	      </table>
	    </div>
	    
	    <nav>
	      <ul class="pagination justify-content-center">
	        <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item active"><a class="page-link" href="#">2</a></li>
	        <li class="page-item active"><a class="page-link" href="#">3</a></li>
	        <li class="page-item active"><a class="page-link" href="#">Next</a></li>
	      </ul>
	    </nav>
	  </div>
	</div>
</body>
</html>