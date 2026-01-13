<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>My Appointments</title>
</head>
<body>
    <h2>My Appointments</h2>
    <table border="1">
        <tr>
            <th>Doctor Name</th>
            <th>Date</th>
            <th>Action</th>
        </tr>
        <c:forEach var="a" items="${appointments}">
            <tr>
                <td>${a.doctorName}</td>
                <td>${a.appointmentDate}</td>
                <td>
                    <a href="UpdateBookingServlet?appointmentId=${a.appointmentId}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
