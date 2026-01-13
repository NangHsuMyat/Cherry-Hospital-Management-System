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
<style>
.error-message {
	color: #dc3545; /* soft Bootstrap red */
	font-size: 16px;
	font-weight: 500; /* medium, not bold */
	text-align: center;
	margin-bottom: 15px;
}

.error-message1 {
	color: #dc3545; /* soft Bootstrap red */
	font-size: 16px;
	font-weight: 500; /* medium, not bold */
	text-align: center;
	margin-bottom: 15px;
}
</style>
</head>

<body>



	<!-- Navbar Start -->
	<!-- Navbar End -->





	<!-- Login Note Start -->
	<div class="container-fluid py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5" style="max-width: 500px;">
				<h5
					class="d-inline-block text-primary text-uppercase border-bottom border-5 display-4">Sign
					Up Form</h5>
				<h5 class="display-7">Excellent Hospital Is Here To Take Care
					For Your Health,Start Your Journey by Signing Up!</h5>
			</div>
		</div>
	</div>
	<!-- Login Note End -->

	<!-- Testing start -->
	<div class="row justify-content-center position-relative"
		style="margin-top: -130px; z-index: 1;">
		<div class="col-lg-8">
			<div class="bg-white rounded p-5 m-5 mb-0">
				<form action="SignupServlet" method="post">
					<div class="row g-4">
						<div class="form-floating col-12 col-sm-6">
							<input type="text" class="form-control bg-light border-0"
								id="floatingInput" placeholder="Enter Your Name"
								style="height: 55px;" name="uname" required> <label
								for="floatingInput" style="margin-left: 10px;">Enter
								your name</label>
						</div>
						<div class="form-floating col-12 col-sm-6">
							<input type="email" class="form-control bg-light border-0"
								id="floatingInput" placeholder="Enter Your Email"
								style="height: 55px;" name="uemail" required> <label
								for="floatingInput" style="margin-left: 10px;">Enter
								your email</label>
						</div>
						<div class="form-floating col-12 col-sm-6">
							<input type="password" class="form-control bg-light border-0"
								id="floatingInput" placeholder="Enter Your Password"
								style="height: 55px;" name="upassword" required> <label
								for="floatingInput" style="margin-left: 10px;">Enter
								your password</label>
						</div>
						<div class="form-floating col-12 col-sm-6">
							<input type="password" class="form-control bg-light border-0"
								id="floatingInput" placeholder="Confirm Your Password"
								style="height: 55px;" name="ucpassword" required> <label
								for="floatingInput" style="margin-left: 10px;">Confirm
								your password</label>
						</div>
						<div class="form-floating col-12 col-sm-6">
							<input type="tel" class="form-control bg-light border-0"
								id="floatingInput" placeholder="Enter Your Phone Number"
								style="height: 55px;" name="uphoneno" required> <label
								for="floatingInput" style="margin-left: 10px;">Enter
								Your Phone Number</label>
						</div>
						<div class="form-floating col-12 col-sm-6">
							<!-- <input type="email" class="form-control bg-light border-0" id="floatingInput" placeholder="Enter Your Blood Type" style="height: 55px;"  required> -->
							<select class="form-select bg-light border-0" id="floatingInput"
								style="height: 55px;" name="ubloodtype">
								<option selected>Open this select menu</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="O">O</option>
								<option value="AB">AB</option>
							</select> <label for="floatingInput" style="margin-left: 10px;">Select
								your blood type</label>
						</div>
						<%
						String errorMessage = (String) request.getAttribute("errorMessage");
						if (errorMessage != null && !errorMessage.isEmpty()) {
						%>
						<div class="error-message">
							<%=errorMessage%>
						</div>
						<%
						}
						%>



						<div class="text-center">
							<button class="btn btn-primary w-75 py-3 rounded-pill "
								type="submit">Sign Up</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Testing end -->

	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light mt-5 py-5">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h4
						class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Get
						In Touch</h4>
					<p class="mb-4">Here are the contact infos if any problem has
						occured in both technical or service.</p>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt text-primary me-3"></i>Faculity Of
						Computer Studies Taunggyi, Shan State
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope text-primary me-3"></i>cherryhealthcare@gmail.com
					</p>
					<p class="mb-0">
						<i class="fa fa-phone-alt text-primary me-3"></i>+959 985118562
					</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4
						class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Quick
						Links</h4>
					<div class="d-flex flex-column justify-content-start">
						<a class="text-light mb-2" href="index.html"><i
							class="fa fa-angle-right me-2"></i>Home</a> <a
							class="text-light mb-2" href="about.html"><i
							class="fa fa-angle-right me-2"></i>About Us</a> <a
							class="text-light mb-2" href="service.html"><i
							class="fa fa-angle-right me-2"></i>Our Services</a> <a
							class="text-light mb-2" href="team.html"><i
							class="fa fa-angle-right me-2"></i>Meet The Team</a> <a
							class="text-light mb-2" href="blog.html"><i
							class="fa fa-angle-right me-2"></i>Latest Blog</a> <a
							class="text-light" href="contact.html"><i
							class="fa fa-angle-right me-2"></i>Contact Us</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4
						class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Popular
						Links</h4>
					<div class="d-flex flex-column justify-content-start">
						<a class="text-light mb-2" href="index.html"><i
							class="fa fa-angle-right me-2"></i>Home</a> <a
							class="text-light mb-2" href="about.html"><i
							class="fa fa-angle-right me-2"></i>About Us</a> <a
							class="text-light mb-2" href="service.html"><i
							class="fa fa-angle-right me-2"></i>Our Services</a> <a
							class="text-light mb-2" href="team.html"><i
							class="fa fa-angle-right me-2"></i>Meet The Team</a> <a
							class="text-light mb-2" href="blog.html"><i
							class="fa fa-angle-right me-2"></i>Latest Blog</a> <a
							class="text-light" href="contact.html"><i
							class="fa fa-angle-right me-2"></i>Contact Us</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4
						class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Newsletter</h4>
					<form action="">
						<div class="input-group">
							<input type="text" class="form-control p-3 border-0"
								placeholder="Your Email Address">
							<button class="btn btn-primary">Sign Up</button>
						</div>
					</form>
					<h6 class="text-primary text-uppercase mt-4 mb-3">Follow Us</h6>
					<div class="d-flex">
						<a
							class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2"
							href="#"><i class="fab fa-twitter"></i></a> <a
							class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2"
							href="#"><i class="fab fa-facebook-f"></i></a> <a
							class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2"
							href="#"><i class="fab fa-linkedin-in"></i></a> <a
							class="btn btn-lg btn-primary btn-lg-square rounded-circle"
							href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div
		class="container-fluid bg-dark text-light border-top border-secondary py-4">
		<div class="container">
			<div class="row g-5">
				<div class="col-md-6 text-center text-md-start">
					<p class="mb-md-0">
						&copy; <a class="text-primary" href="#">Cherry Health Care</a>.
						All Rights Reserved.
					</p>
				</div>
				<div class="col-md-6 text-center text-md-end">
					<p class="mb-0">
						Designed by <a class="text-primary" href="https://htmlcodex.com">Cherry
							Team</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>


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