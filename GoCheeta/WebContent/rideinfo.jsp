<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="navbar.css" />
<link rel="stylesheet" type="text/css" href="usertable.css" />

<title>Ride Info</title>
<style>
</style>
</head>
<body>

	<!-- Top navigation -->
	<div class="topnav">

		<!-- Centered link -->
		<div class="topnav-centered">
			<a href="dashboard" class="active">Home</a>
		</div>

		<!-- Left-aligned links (default) -->
		<a href="myrides"><i class="fa fa-car" aria-hidden="true"></i>My
			Rides</a> <a href="contactus.html"><i class="fa fa-fw fa-envelope"></i>Contact
			US</a> <a href="myprofile"><i class="fa fa-fw fa-user"></i>My Profile</a>

		<!-- Right-aligned links -->
		<div class="topnav-right">
			<a href="#search"><i class="fa fa-fw fa-search"></i>Search</a> <a
				href="index.html"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
		</div>
	</div>


	<div class="container">

		<div class="row">
			<div class="col-md-6">
			<h3>Driver Details</h3>
				<table id="club" align="left">
					<c:forEach items="${driver}" var="r">
						<tr>
							<th>Name</th>
							<td>${r.name}</td>
						</tr>
						<tr>
							<th>Age</th>
							<td>${r.age}</td>
						</tr>
						<tr>
							<th>Phone</th>
							<td>${r.phone}</td>
						</tr>
						<tr>
							<th>Car</th>
							<td>${r.carname}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-md-6">
				<h3>Route info </h3>
				<table id="route" class="table table-striped">
				<tr>
					<th>Route</th>
					<th>Distance</th>
					<th>Fair</th>
				</tr>
				<tr>
					<c:forEach items="${routes}" var="route">
						<tr>
							<td>${route.route}</td>
							<td>${route.kms}</td>
							<td>${route.fair}</td>
						</tr>
					</c:forEach>
				</tr>
			</table>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<a href="confirmbooking"><button class="btn btn-primary">Confirm Booking</button></a>
			</div>
			<div class="col-md-4"></div>
		</div>
		
		<div class="row">
		<br>
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<a href="dashboard"><button class="btn btn-danger">Cancel</button></a>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>


</body>
</html>