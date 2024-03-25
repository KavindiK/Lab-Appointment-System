<!DOCTYPE html>
<html>
<head>
	<title>Customer Dashboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	<link rel="stylesheet" type="text/css" href="css/nav.css">
<style>
img {
			max-width: 60%;
			height: auto;
			display: block;
  			transition: transform 0.2s ease-in-out;
		}
</style>	
</head>

<body>
	<header>
		<nav>
			<ul>
				<li><a href="Index.jsp">Home</a></li>
				<li><a href="MyAppointment.jsp">My Appointment</a></li>
				<li><a href="ServiceDashboard.jsp">Services</a></li>
				<lii><a href="Login.jsp">Admin Login</a></lii>
			</ul>
		</nav>
	</header>
<br><br>

 <h2>Our Service</h2>
 <br>
	<section class="dashboard">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body">				
							<h5><a class="nav-link" href="Login.jsp">Lab Technicians</a></h5>					
							<p class="card-text">Select Lab Technicians</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body">
							<h5> <a class="nav-link" href="Login.jsp">Doctor Service</a></h5>
							<p class="card-text">Select Doctor Service</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body">
							<h5> <a class="nav-link" href="Login.jsp">Administrators</a></h5>
							<p class="card-text">Select Administrators</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body">
							<h5><a class="nav-link" href="MyLabReport.jsp">Patient Lab Reports</a></h5>
							<p class="card-text">View Patient Lab Reports</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
		<br><br><br><br><br><br><br><br><br><br><br>
	<footer>
		<p>&copy; 2024 ABC Lab Appointment System</p>
	</footer>

</body>
</html>
