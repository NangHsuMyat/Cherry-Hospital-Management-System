<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>CHERRY - HealthCare Management System</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
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

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Login Note Start -->
	<div class="container-fluid py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5" style="max-width: 500px;">
				<h5
					class="d-inline-block text-primary text-uppercase border-bottom border-5 display-4">Welcome
					to Cherry Hospital</h5>

			</div>
		</div>
	</div>
	<!-- Login Note End -->

	<!-- Testing start -->
	<div class="row justify-content-center position-relative"
		style="margin-top: -130px; z-index: 1;">
		<div class="col-lg-5">
			<div class="bg-white rounded p-5 m-5 mb-0">
				<form action="loginServlet" id="form" method="post">
					<div class="row g-4">
						<div class="form-floating">
							<input type="text" class="form-control bg-light border-0 "
								id="inname" placeholder="Enter Your Name" style="height: 55px;"
								name="uemail" required> <label for="floatingInput"
								style="margin-left: 10px;">Enter your email</label>
						</div>
						<div class="form-floating col-12">
							<input type="password"
								class="form-control bg-light border-0 inpass" id="inpass"
								placeholder="Enter Your Password" style="height: 55px;"
								name="upassword" required> <label for="floatingInput"
								style="margin-left: 10px;">Enter your password </label>
						</div>
						<%
						String error = (String) request.getAttribute("error");
						%>
						<%
						if (error != null) {
						%>
						<div style="color: red; margin-bottom: 10px; margin-left:50px">
							<%=error%>
						</div>
						<%
						}
						%>
						<div class="text-center">
							<button class="btn btn-primary w-75 py-3 rounded-pill "
								type="submit" id="button">Login</button>
						</div>
						<span class="text-center">Create a new account?<a
							href="SignUp.jsp">Sign Up</a></span>


					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Testing end -->
	

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/tempusdominus/js/moment.min.js"></script>
	<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>