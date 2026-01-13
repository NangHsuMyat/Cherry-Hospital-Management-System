<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String didParam = request.getParameter("id");
out.println("did param = " + didParam);  // For debugging

if (didParam == null) {
    out.println("No doctor ID provided!");
} else {
    int did = Integer.parseInt(didParam);
    boolean status = DoctorDao.deleteDoctor(did);
    if (status) {
        response.sendRedirect("viewData.jsp");
    } else {
        out.println("Failed to delete doctor with ID: " + did);
    }
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta charset="utf-8">
    <title>CHERRY - HealthCare Management System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
	<style>#hehe{margin:auto;}</style>
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>
<body>
 

<%@ page import="Insert.DoctorDao,Insert.Doctors,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Navbar Start -->
   <%@include file="Anavi.jsp" %>
    <!-- Navbar End -->

 <div style="padding: 0px 50px 0px 50px;">
        <br><h1 class="text-center fw-bold">Delete Doctor's Information</h1>
        <br>
       
        <ul style="display: flex;list-style-type: none;margin: auto;padding: 20px 0px 0px 300px;">
        <li style="padding-right: 20%;font-size: large;font-weight: bold;" class="text-dark"><a href="insert.jsp" class="bg-info text-dark" style="padding:10px;border-radius: 15px;font-weight: bold;text-decoration:none;">Insert Doctor Information</a></li>
        
        <li style="padding-right: 20%;font-size: large;font-weight: bold;" class="text-dark"><a href="viewData.jsp" class="bg-info text-dark" style="padding:10px;border-radius: 15px;font-weight: bold;text-decoration:none;">View Doctor Information</a></li>
        </ul>        
      <form action="Delete_Action.jsp" method="get">
        <div style="padding: 40px;">
	  <table style="margin: auto;">
	  <c:forEach items="${list}" var="r">
        
        <tr><td class="text-dark" style="font-weight: bold;">Doctor Name</td></tr><tr><td><input type="text" id="tt" name="dname" value="${r.getDname() }" style="border-radius: 10px;width: 500px;padding: 5px 0px 5px 0px;margin-bottom:8px;" required></td></tr>
        <tr><td class="text-dark" style="font-weight: bold;">Doctor Specialize</td></tr><tr><td><input type="text" id="tt" name="dspecialist" value="${r.getDspecialist() }" style="border-radius: 10px;width: 500px;padding: 5px 0px 5px 0px;margin-bottom:8px;"required></td></tr>
        <tr><td class="text-dark" style="font-weight: bold;">Doctor Degree</td></tr><tr><td><input type="text" id="tt" name="ddegree" value="${r.getDdegree() }" style="border-radius: 10px;width: 500px;padding: 5px 0px 5px 0px;margin-bottom:8px;"required></td></tr>
       <tr> <td class="text-dark" style="font-weight: bold;">Doctor Schedule</td></tr><tr><td><input type="text" id="tt" name="dschedule" value="${r.getDschedule() }" style="border-radius: 10px;width: 500px;padding: 5px 0px 5px 0px;margin-bottom:8px;"required></td></tr>
        <td><input type="hidden" name="did" value="${r.getDid() }"required></td>
        <tr>
        <td><input type="submit" name="submit" value="Delete Doctor Infromation" class="bg-info text-dark" style="border:none; padding:10px;border-radius: 15px;font-weight: bold;text-align: center;width: 100%;"></td></tr>
        
         </c:forEach>
        </table>
        </div>
	  </form>
</div>
 <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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