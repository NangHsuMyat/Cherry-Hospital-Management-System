<%@ page import="java.util.List" %>
<%@ page import="Insert.DoctorDao" %>
<%@ page import="Insert.Doctors" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Doctors> doctors = DoctorDao.getDoctors();
    request.setAttribute("doctors", doctors);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Doctors</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<%@ include file='navi.jsp' %>
<div class="container mt-3">
    <h2>Doctors List</h2>
    <a href="addDoctor.jsp" class="btn btn-success mb-3">Add New Doctor</a>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Name</th>
                <th>Specialist</th>
                <th>Degree</th>
                <th>Schedule</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="doc" items="${doctors}">
                <tr>
                    <td>${doc.dname}</td>
                    <td>${doc.dspecialist}</td>
                    <td>${doc.ddegree}</td>
                    <td>${doc.dschedule}</td>
                    <td>
                        <a href="editDoctor.jsp?id=${doc.did}" class="btn btn-primary btn-sm">Edit</a>
                        <form action="DeleteDoctorServlet" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${doc.did}" />
                            <input type="submit" class="btn btn-danger btn-sm" value="Delete"
                                   onclick="return confirm('Are you sure to delete this doctor?');" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <%@ include file="footer.jsp" %>
</div>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
