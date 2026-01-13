<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="Insert.DoctorDao"%>
<%@ page import="Insert.Doctors"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
// Get appointment info from servlet attributes
int currentDoctorId = (Integer) request.getAttribute("currentDoctorId");
String currentDate = (String) request.getAttribute("currentDate");
int appointmentId = (Integer) request.getAttribute("aid");

// Get all doctors for the dropdown
List<Doctors> list = DoctorDao.getDoctors();

// Set it as a request attribute for JSTL
request.setAttribute("doctorsList", list);
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CHERRY - Update Appointment</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

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
</head>

<body>
	<%@ include file="navi.jsp"%>

	<!-- Profile Note Start -->
	<div class="container-fluid py-5">
		<div class="container">
			<div class="text-center mx-auto mb-5" style="max-width: 500px;">
				<h6
					class="d-inline-block text-primary text-uppercase border-bottom border-5 display-5">Re-Schedule
					your appointment !</h6>
				<h5 class="display-7">Re-Scheduling Appointment</h5>
			</div>
		</div>
	</div>
	<!-- Profile Note End -->

	<!-- Profile Form Start -->
	<div class="row justify-content-center position-relative"
		style="margin-top: -130px; z-index: 1;">
		<div class="col-lg-8">
			<div class="bg-white rounded p-5 m-5 mb-0">
				<form action="UpdateBookingServlet" method="post">
					<input type="hidden" name="appointmentId"
						value="<%=appointmentId%>" />

					<div class="row justify-content-center g-4">
						<!-- Doctor dropdown -->
						<div class="col-12 col-sm-4">
							<label for="doctor" class="form-label">Select Doctor:</label> <select
								id="doctor" name="doctorId" required
								class="form-control bg-light border-0">
								<c:forEach items="${doctorsList}" var="r">
									<option value="${r.did}"
										<c:if test="${r.did == currentDoctorId}">selected</c:if>>
										${r.dname} - ${r.dspecialist}</option>
								</c:forEach>
							</select>
						</div>

						<!-- Date picker -->
						<div class="col-12 col-sm-4">
							<label for="date" class="form-label">Select Date:</label> <input
								type="date" id="date" name="appointmentDate"
								class="form-control bg-light border-0" required
								value="<%=currentDate%>" />
						</div>
					</div>

					<!-- Button -->
					<div class="text-center mt-4">
						<button class="btn btn-primary w-75 py-3 rounded-pill"
							type="submit">Re-Schedule</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Profile Form End -->

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
