<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>ALl Rides</title>
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
	
	
	<div class="row">
	
		<div class="col-md-2"></div>
		<div class="col-md-8">
	<h2>All Rides info</h2>
			<table id="route" class="table table-striped">
				<tr>
					<th>User Email</th>
					<th>Driver DL</th>
					<th>Route</th>
					<th>Fair</th>
					<th>status</th>
				</tr>
				<tr>
					<c:forEach items="${rides}" var="ride">
						<tr>
							<td>${ride.email}</td>
							<td>${ride.dlid}</td>
							<td>${ride.route}</td>
							<td>${ride.fair}</td>
							<td>${ride.status}</td>
						</tr>
					</c:forEach>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>