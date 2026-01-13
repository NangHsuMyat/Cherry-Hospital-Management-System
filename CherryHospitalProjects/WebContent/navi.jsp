<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">

<!-- Bootstrap JS Bundle with Popper -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.dropdown-menu {
	position: absolute !important;
}
</style>
</head>
<body>

	<div class="container-fluid sticky-top bg-white shadow-sm">
		<div class="container">
			<nav
				class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
				<a href="index.html" class="navbar-brand">
					<h1 class="m-0 text-uppercase text-primary">
						<i class="fa fa-clinic-medical me-2"></i>Cherry
					</h1>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>

				<%
                String username = (String) session.getAttribute("Name");
            %>

				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="index.jsp" class="nav-item nav-link active">Home</a> 
						<a href="doctors.jsp" class="nav-item nav-link">Doctors</a> 
							<a href="Booking.jsp" class="nav-item nav-link">Appointment</a> 
						
							<a href="ambulance.jsp" class="nav-item nav-link">Ambulance</a> 
							<a href="blog.jsp" class="nav-item nav-link">Activity</a> 
							<a href="contact.jsp" class="nav-item nav-link">Contact Us</a>

						<% if (username != null) { %>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" id="userDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="bi bi-person-circle"></i> <%= username %>
							</a>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="userDropdown">
								<li><a class="dropdown-item" href="myprofile.jsp">My
										Profile</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
							</ul>
						</div>
						<% } else { %>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" id="guestDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								</i> Account
							</a>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="guestDropdown">
								<li><a class="dropdown-item" href="login.jsp">Login</a></li>
								<li><a class="dropdown-item" href="signUp.jsp">Register</a></li>
							</ul>
						</div>
						<% } %>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Bootstrap JS Bundle (once only) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>