<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CHERRY - Booking Result</title>

<link href="img/favicon.ico" rel="icon">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<style>
/* Reduce margin-bottom on the message box */
.message {
	margin-bottom: 0 !important;
	padding: 15px;
	max-width: 500px;
	border-radius: 5px;
	font-size: 16px;
}

/* Reduce margin-bottom of the text container around the message */
.text-center.mx-auto.mb-5 {
	margin-bottom: 0 !important;
}

/* Reduce padding-top and padding-bottom of the container-fluid holding the section */
.container-fluid.py-5 {
	padding-top: 1rem !important;
	padding-bottom: 1rem !important;
}

/* Reduce margin-top on the container with the card (form) */
.container>.card {
	margin-top: 0 !important;
}

.container {
	display: flex;
	justify-content: center; /* centers children horizontally */
	max-width: 800px;
}

.success {
	background-color: #d4edda;
	color: #155724;
	border: 1px solid #c3e6cb;
}

.error {
	background-color: #f8d7da;
	color: #721c24;
	border: 1px solid #f5c6cb;
}
</style>
</head>
<body>

	<%@ include file="navi.jsp"%>

	<!-- Title Section -->
	<div class="container-fluid py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5" style="max-width: 500px;">
				<h6
					class="d-inline-block text-primary text-uppercase border-bottom border-5 display-5">Cherry
					Hospital</h6>

				<div class="text-center mt-4">
					<div class="text-center mx-auto mb-5" style="margin-bottom: 0;">

						<c:choose>
							<c:when test="${message != null}">
								<div
									class="message ${message.startsWith('Appointment booked') ? 'success' : 'error'}">
									${message}</div>
							</c:when>
							<c:otherwise>
								<div class="message error">No message available.</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Status Message -->

	<div class="container">
		<div class="card shadow-lg p-4 mx-auto"
			style="max-width: 700px; border-radius: 15px;">
			<h4 class="text-primary text-center mb-4">Your Appointment</h4>
			<p>
				<strong>Doctor : </strong> ${doctorName}
			</p>
			<p>
				<strong>Specialist : </strong> ${doctorSpecialist}
			</p>
			<p>
				<strong>Date : </strong> ${appointmentDate}
			</p>

			<div class="d-flex justify-content-center gap-3"
				style="margin-top: 20px; border-radius: 10px;">
				<!-- Update Button -->
				<!-- Update Button -->
				<form action="UpdateBookingServlet" method="get">
					<input type="hidden" name="aid" value="${appointmentId}">
					<button type="submit" class="btn btn-primary px-4">
						<i class="bi bi-pencil-square"></i> Update
					</button>
				</form>

				<!-- Cancel Button -->
				<form action="CancelBookingServlet" method="post" onsubmit="return confirm('Are you sure?');">
    <input type="hidden" name="aid" value="${appointmentId}">
    <button type="submit" class="btn btn-secondary px-4">
        <i class="bi bi-x-circle"></i> Cancel
    </button>
</form>


			</div>
		</div>
	</div>



	<!-- Appointment Details Card -->


	<div class="text-center mt-4">
		<a href="Booking.jsp"
			class="btn btn-outline-primary rounded-pill px-4"> <i
			class="bi bi-arrow-left"></i> Back to Booking Page
		</a>
	</div>
	</div>
	</div>

	<%@ include file="footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/tempusdominus/js/moment.min.js"></script>
	<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
