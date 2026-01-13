<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Insert.Doctors,Insert.DoctorDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Doctors - Cherry HealthCare</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background-color: #f0f4f8;
    font-family: 'Roboto', sans-serif;
}

h1 {
    text-align: center;
    margin: 40px 0;
    color: #13C5DD; /* your turquoise/navy color */
    font-weight: bold;
}

.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 25px;
    justify-content: center;
}

.doctor-card {
    background: linear-gradient(145deg, #ffffff, #e0f7fa);
    border-radius: 20px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    padding: 25px;
    width: 320px;
    min-height: 250px;
    transition: transform 0.3s, box-shadow 0.3s;
    word-wrap: break-word;
}

.doctor-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 25px rgba(0,0,0,0.2);
}

.doctor-name {
    font-size: 1.5rem;
    font-weight: bold;
    color: #13C5DD; 
    margin-bottom: 8px;
}

.doctor-specialist {
    font-size: 1.1rem;
    color: #555;
    margin-bottom: 10px;
}

.doctor-info {
    font-size: 0.95rem;
    margin-bottom: 5px;
}

.btn-group {
    display: flex;
    justify-content: space-between;
    margin-top: 15px;
    gap: 10px;
}

/* Modern Update Button */
.btn-update {
    background: linear-gradient(45deg, #13C5DD, #0faac1);
    color: white;
    font-weight: bold;
    border-radius: 50px; /* pill shape */
    padding: 8px 20px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    transition: all 0.3s ease;
    flex: 1;
    text-align: center;
}

.btn-update:hover {
    background: linear-gradient(45deg, #0faac1, #13C5DD);
    transform: translateY(-3px);
    box-shadow: 0 6px 15px rgba(0,0,0,0.3);
}

/* Modern Delete Button */
.btn-delete {
    background-color: #6c757d; /* dark gray */
    color: white;
    font-weight: bold;
    border-radius: 50px;
    padding: 8px 20px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    transition: all 0.3s ease;
}

.btn-delete:hover {
    background-color: #5a6268; /* slightly darker gray on hover */
    transform: translateY(-2px);
    box-shadow: 0 6px 10px rgba(0,0,0,0.15);
}


@media (max-width: 768px) {
    .doctor-card {
        width: 90%;
    }
}
</style>
</head>
<body>

<%@ include file="Anavi.jsp"%>

<div class="container">
    <h1>Our Doctors</h1>

    <div class="card-container">
        <%
            List<Doctors> list = DoctorDao.getDoctors();
            request.setAttribute("list", list);
        %>

        <c:forEach items="${list}" var="r">
            <div class="doctor-card">
                <div class="doctor-name">${r.getDname()}</div>
                <div class="doctor-specialist">${r.getDspecialist()}</div>
                <div class="doctor-info"><strong>Degree:</strong> ${r.getDdegree()}</div>
                <div class="doctor-info"><strong>Schedule:</strong> ${r.getDschedule()}</div>
                <div class="btn-group">
                    <a href="Update.jsp?id=${r.getDid()}" class="btn btn-update btn-sm">Update</a>
                    <a href="Delete.jsp?id=${r.getDid()}" class="btn btn-delete btn-sm"
                       onclick="return confirm('Are you sure to delete this doctor?');">Delete</a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
