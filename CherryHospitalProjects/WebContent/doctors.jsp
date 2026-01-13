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
 

    <!-- Search Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Find A Doctor</h5>
                <h1 class="display-4 mb-4">Find A Healthcare Professionals</h1>
                <h5 class="fw-normal">Schedule an online consultation and discuss your health concerns with qualified physician.</h5>
            </div>
            
            <%--<form action="ShowDoctors.jsp" method="post">
            
            <div class="mx-auto" style="width: 100%; max-width: 600px;">
                <div class="input-group">
              
                <select name="dropdown" type="text" class="form-control border-primary w-50">
                <option value="">Select an doctors name</option>
              <% 
                DoctorDao doctor = new DoctorDao();
                List<String> options = doctor.doctordropdown();
                for (String option : options) {
            %>
            <option value="<%= option %>"><%= option %></option>
            <%
                }
            %>
        </select>
   <button class="btn btn-dark border-0 w-25">Search</button>
                    
  </div>
            </div><br><br>
            
            </form> --%> 
             
            
            
           <form action="ShowDoctors.jsp" method="post">
            <div class="mx-auto" style="width: 100%; max-width: 600px;">
                <div class="input-group">
                   <input type="text" class="form-control border-primary w-50"  name="searchbyName" placeholder="Search with Doctor's name"required>
                  
                  <button class="btn btn-dark border-0 w-25">Search</button>
                    
                </div>
            </div><br><br></form> 
            
            
             <form action="SearchBySpecialist.jsp" method="post">
            
            <div class="mx-auto" style="width: 100%; max-width: 600px;">
                <div class="input-group">
              
                <select name="dropdownsp" type="text" class="form-control border-primary w-50" required>
                <option value="">Search by doctors Specialist</option>
              <% 
                DoctorDao doctors = new DoctorDao();
                List<String> optionss = doctors.doctordropdownsp();
                for (String option : optionss) {
            %>
            <option value="<%= option %>"><%= option %></option>
            <%
                }
            %>
        </select>
        
   <button class="btn btn-dark border-0 w-25">Search</button>
                    
  </div>
            </div><br><br>
            
            </form>
            
            <%--
            <form action="SearchBySpecialist.jsp" method="post">
            <div class="mx-auto" style="width: 100%; max-width: 600px;">
                <div class="input-group">
                    
                    <input type="text" class="form-control border-primary w-50" name="searchbySpecialist" placeholder="Search with Doctor's Speciality">
                    <button class="btn btn-dark border-0 w-25"  >Search</button>
                </div>
            </div>
            </form> --%>
        </div>
    </div>
    <!-- Search End -->


    <!-- Search Result Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="doctor.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>Dr.Theingi</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Liver Specialist</h6>
                                <p class="m-1"> M.B, B.S, M.Med.Sc(Int. Medicine)<br> Dr.Med.Sc(Liver Specialist)</p>
                                <p class="m-1">Mon-Wed: 10:00AM-12:00PM </p>
                          </div>
							
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="doctor2.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>Dr. Thet Thet Khin</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Brain and Neurologist </h6>
                                <p class="m-0">M.B, B.S, MMed.Sc(Int.Med),<br>
									Dr.Med.Sc(Neurology)<br> </p>								
									 <p class="m-0">	
                                
                              Mon-Wed: 10:00AM-12:00PM
                                </p>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="naingmin.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                               <h3>Dr.Soe Lwin</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Orthopedic Specialist </h6>
                                <p class="m-1">M.B, B.S, MMed.Sc(Ortho)</p>
                                
                               <p class="m-1"> Mon-Wed: 10:00AM-12:00PM</p>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="doctor8.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                               <h3>Dr.Khaing Yin Mon</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Obstetrics and Gynecology Specialist </h6>
                                <p class="m-1">M.B, B.S, MMed.Sc(OG)</p>
                                
                            <p class="m-1">  Mon-Wed: 10:00AM-12:00PM
                               </p>
                                </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="doctor6.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>Dr.Thiha Zaw</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Dental Specialist </h6>
                                <p class="m-1">M.B, B.S, BDS, PhD(Tokyo)</p>
                                
                        <p class="m-1">Mon-Wed: 10:00AM-12:00PM</p>
                                
                                
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="kaungmyat.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                 <h3>Dr.Aung Myat Thu</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Dermatologist </h6>
                                <p class="m-1">M.B, B.S, MMed.Sc(Int.Med)Dr.Med.Sc(Dermatology)</p>
								<p class="m-1"> Mon-Wed: 10:00AM-12:00PM</p>
                               
									
                            </div>
                           
                        </div>
                    </div>
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