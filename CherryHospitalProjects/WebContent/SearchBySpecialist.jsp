<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Cherry Health Care Management System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

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


   <!-- Navbar Start -->
    <%@ include file="navi.jsp" %>
    <!-- Navbar End -->


 
    

<%@ page import="Insert.DoctorDao,Insert.Doctors,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Search Result Start -->
    <% 
    String dname=request.getParameter("dropdownsp");
    List<Doctors>list=DoctorDao.getDoctorsBySpecialist(dname);
    
   request.setAttribute("list", list);
    
    %>
    
   
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row g-5">
            
             <c:forEach items="${list}" var="r">
            
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="doctorhehe.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>${r.getDname()}</h3>
                <h6 class="fw-normal fst-italic text-primary mb-4">${r.getDspecialist()}</h6>
                                <p class="m-1"> ${r.getDdegree()}</p>
                                <p class="m-1"> ${r.getDschedule()}</p>								
                            </div>
                            
							
                        </div>
                    </div>
                </div>
              
                </c:forEach>
                
                <div class="col-12 text-center">
                   <a href="doctors.jsp"><button class="btn btn-primary py-3 px-5">Back To Search</button></a> 
                </div>
            </div>
        </div>
    </div>
    <!-- Search Result End -->


    <!-- Footer Start -->
   <%@ include file="footer.jsp" %>
    <!-- Footer End -->


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