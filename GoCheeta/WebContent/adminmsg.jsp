<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="navbar.css" />
<title>Admin Message</title>
</head>
<body>

	<div class="topnav">
		<!-- Centered link -->
		<div class="topnav-centered">
			<a href="admin.html" class="active">Admin Home</a>
		</div>

		<!-- Left-aligned links (default) -->
		<a href="viewallrides"><i class="fa fa-car" aria-hidden="true"></i>Show
			all Rides</a> <a href="viewalldrivers"><i class="fa fa-fw fa-user"></i>Show
			All Drivers</a>

		<!-- Right-aligned links -->
		<div class="topnav-right">
			<a href="#search"><i class="fa fa-fw fa-search"></i>Search</a> <a
				href="index.html"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
		</div>
	</div>

	<h1 align="center" class="text-primary">

		<%
			out.println("" + session.getAttribute("message"));
		%>

	</h1>
</body>
</html>