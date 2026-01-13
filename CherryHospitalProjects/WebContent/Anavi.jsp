

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<!-- Bootstrap JS Bundle with Popper -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	
<style>
.turquoise-text {
    color: #13C5DD !important;
}

.turquoise-btn {
    background-color: turquoise !important;
    color: white !important; /* text color */
    border: none;
}

.turquoise-btn:hover {
    background-color: #40E0D0 !important; /* slightly darker on hover */
}



.dropdown-menu {
	position: absolute !important;
}
</style>
</head>
<body>

	<div class="container-fluid sticky-top bg-white shadow-sm ">
		<div class="container">
			<nav
				class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
				<a href="index.html" class="navbar-brand">
					<h1 class="m-0 text-uppercase turquoise-text">
						<i class="fa fa-clinic-medical me-2"></i>Cherry
					</h1>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>

			

				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						
							<a href="viewData.jsp" class="nav-item nav-link">View Doctor</a> 
							
							<a href="viewAppointmentByAdmin.jsp" class="nav-item nav-link">View Appointment</a> 
							
							<a href="insert.jsp" class="nav-item nav-link">Insert Doctor</a> 
								<a href="AdLogin.jsp" class="nav-item nav-link">Logout</a> 
	

						
						
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