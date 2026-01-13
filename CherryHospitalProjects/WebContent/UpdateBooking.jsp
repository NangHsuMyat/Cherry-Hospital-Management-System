<%@ page import="java.util.List" %>
<%@ page import="Insert.DoctorDao" %>
<%@ page import="Insert.Doctors" %>

<%
    // Get appointmentId from request
    String appointmentIdStr = request.getParameter("appointmentId");
    int appointmentId = Integer.parseInt(appointmentIdStr);

    // You'd fetch appointment details from DB here to prefill form
    // For simplicity, assume you passed these as request attributes:
    // doctorId, appointmentDate

    // Also get list of doctors for dropdown
    List<Doctors> doctors = DoctorDao.getDoctors();

    //Integer currentDoctorId = (Integer) request.getAttribute("doctorId");
    //String currentDate = (String) request.getAttribute("appointmentDate");
    Integer currentDoctorId = (Integer) request.getAttribute("currentDoctorId");
String currentDate = (String) request.getAttribute("currentDate");

%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Appointment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5" style="max-width:600px;">
    <h3>Update Appointment</h3>
    <form action="UpdateBookingServlet" method="post">
        <input type="hidden" name="appointmentId" value="<%= appointmentId %>">

        <div class="mb-3">
            <label for="doctorId" class="form-label">Select Doctor</label>
            <select class="form-select" name="doctorId" id="doctorId" required>
                <option value="">-- Select Doctor --</option>
                <% for (Doctors d : doctors) { %>
                    <option value="<%= d.getDid() %>" <%= (d.getDid() == currentDoctorId) ? "selected" : "" %>>
                        <%= d.getDname() %> - <%= d.getDspecialist() %>
                    </option>
                <% } %>
            </select>
        </div>

        <div class="mb-3">
            <label for="appointmentDate" class="form-label">Appointment Date</label>
            <input type="date" class="form-control" name="appointmentDate" id="appointmentDate" 
                value="<%= currentDate %>" required>
        </div>

        <button type="submit" class="btn btn-primary">Update Appointment</button>
        <a href="BookingSuccess.jsp" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
