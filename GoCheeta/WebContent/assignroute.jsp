<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign Routes</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="navbar.css" />
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


	<div class="container">


		<div class="row">
			<div class="col-sm-6">
				<br>

				<form method="post" action="updateroute">
					<div class="form-group">
						<label for="start">Route</label> <input type="text" name="route"
							class="form-control" id="start" required value=${route.route}>
					</div>

					<div class="form-group">
						<label for="kms">Distance (KMS)</label> <input type="number"
							name="kms" class="form-control" id="kms" required
							value=${route.kms}>
					</div>

					<!--  	<div class="form-group">
						<label for="inputState">Driver</label> <select id="inputState"
							class="form-control" name="dlid">
							<option selected>Choose...</option>
							<c:forEach items="${drivers}" var="driver">
								<option value="${driver.dlid}">${driver.name}</option>
							</c:forEach>
						</select>
					</div> -->

					<div class="form-group">
						<label for="fair">Fair</label> <input type="text" name="fair"
							class="form-control" id="fair" placeholder="Optional"
							value=${route.fair}>
					</div>
					<button type="submit" class="btn btn-primary">Update</button>
					<button type="reset" class="btn btn-warning">Reset</button>
					<a href="admin.html" class="btn btn-danger">Cancel</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>