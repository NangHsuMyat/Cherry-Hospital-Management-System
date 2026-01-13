<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Insert.Doctors,Insert.DoctorDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointments List</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f7f8;
    margin: 20px;
}

h1 {
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: white;
}

th, td {
    padding: 12px 15px;
    border: 1px solid #ddd;
    text-align: left;
}

th {
    background-color: #13c5dd;
    color: white;
    font-weight: bold;
}

/* Zebra striping: odd rows white, even rows light blue */
tr:nth-child(odd) {
    background-color: #ffffff;
}

tr:nth-child(even) {
    background-color: #e7f0fd;
}

/* Hover effect */
tr:hover {
    background-color: #cce4ff;
}

a, input[type=submit] {
    color: #007BFF;
    text-decoration: none;
    cursor: pointer;
    border: none;
    background: none;
    font-size: 14px;
}

a:hover, input[type=submit]:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

<%
    List<Doctors> appointments = DoctorDao.getAllAppointments();
    request.setAttribute("appointments", appointments);
%>

<%@ include file="Anavi.jsp"%>

<div style="padding: 20px;">
    <h1 style="text-align: center; font-weight: bold;">Appointments List</h1>
</div>

<table>
    <tr>
        <th>Appointment ID</th>
        <th>Patient Name</th>
        <th>Patient Email</th>
        <th>Patient Phone</th>
        <th>Doctor Name</th>
        <th>Specialist</th>
        <th>Degree</th>
        <th>Schedule</th>
        <th>Appointment Date</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${appointments}" var="appt">
        <tr>
            <td>${appt.tempAppointmentId}</td>
            <td>${appt.UName}</td>
            <td>${appt.UEmail}</td>
            <td>${appt.UPhoneno}</td>
            <td>${appt.dname}</td>
            <td>${appt.dspecialist}</td>
            <td>${appt.ddegree}</td>
            <td>${appt.dschedule}</td>
            <td>${appt.tempAppointmentDate}</td>
            <td>
                <form action="DeleteAppointmentServlet" method="post" style="display:inline;">
                    <input type="hidden" name="appointmentId" value="${appt.tempAppointmentId}" />
                    <input type="submit" value="Delete"
                           onclick="return confirm('Are you sure you want to delete this appointment?');" />
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
