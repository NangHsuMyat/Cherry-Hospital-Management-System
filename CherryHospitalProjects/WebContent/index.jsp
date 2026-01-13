<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CHERRY - HealthCare Management System</title>
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


    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5" style="border-color: rgba(256, 256, 256, .3) !important;">Welcome To Cherry Hospital</h5>
                    <h1 class="display-1 text-white mb-md-4">Best Healthcare Solution In Your City</h1>
                    <div class="pt-2">
                        <a href="doctors.jsp" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2">Find Doctor</a>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->

    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded" src="abouts.jpg" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="mb-4">
                        <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">About Us</h5>
                        <h1 class="display-4">Best Medical Care For Yourself and Your Family</h1>
                    </div>
                    <p>Our Page is community_based and patient_directed organizations that provide affordable, accessible, high_quality primary health care  services to individauls and Families,
					including people experiencing homelessness, agricultural workers, residents of public housing,and veterans. 
					Our page integrates access to Pharmacy, mental health, substance use disorder,
					and oral health services in areas where economic, geographic, or cultural barriers limit access to affordable health care. Our health center reduce health disparities
					by emphasizing coordinated care management of patients with multiple health care needs and the use of key quality improvement practices, including health information technology.
					</p>
                    <div class="row g-3 pt-3">
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                                <h6 class="mb-0">Qualified<small class="d-block text-primary">Doctors</small></h6>
                            </div>
                        </div>
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-procedures text-primary mb-3"></i>
                                <h6 class="mb-0">Emergency<small class="d-block text-primary">Services</small></h6>
                            </div>
                        </div>
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-microscope text-primary mb-3"></i>
                                <h6 class="mb-0">Accurate<small class="d-block text-primary">Testing</small></h6>
                            </div>
                        </div>
                        <div class="col-sm-3 col-6">
                            <div class="bg-light text-center rounded-circle py-4">
                                <i class="fa fa-3x fa-ambulance text-primary mb-3"></i>
                                <h6 class="mb-0">Free<small class="d-block text-primary">Ambulance</small></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    

    <!-- Services Start -->
<div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Services</h5>
                <h1 class="display-4">Excellent Medical Services</h1>
            </div>
            <div class="row g-5">
                
                <div class="col-lg-4 col-md-6">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-stethoscope text-white"></i>
                        </div>
                        <h4 class="mb-3">Doctors</h4>
                        <p class="m-0">Book outdoor appointments with doctors and have direct access to their expertise through our intuitive healthcare website</p>
                        <a class="btn btn-lg btn-primary rounded-pill" href="doctors.jsp">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-ambulance text-white"></i>
                        </div>
                        <h4 class="mb-3">Ambulance Service</h4>
                        <p class="m-0">Accessible healthcare on wheels, offering free ambulance services for those in need</p>
                        <a class="btn btn-lg btn-primary rounded-pill" href="ambulance.jsp">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6">
                    <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                        <div class="service-icon mb-4">
                            <i class="fa fa-2x fa-users text-white"></i>
                        </div>
                        <h4 class="mb-3">Team</h4>
                        <p class="m-0">Experience the convenience of cost-free blood tests, ensuring you stay informed about your well-being</p>
                        <a class="btn btn-lg btn-primary rounded-pill" href="contact.jsp">
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->


     

    <!-- Team Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Our Doctors</h5>
                <h1 class="display-4">Qualified Healthcare Professionals</h1>
            </div>
            <div class="owl-carousel team-carousel position-relative">
                <div class="team-item">
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
                <div class="team-item">
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
				 <div class="team-item">
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
					<div class="team-item">
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
				 <div class="team-item">
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
				 <div class="team-item">
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
                <div class="team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="thandar.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>Doctor Thandar Aung</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Paediatric Specialist </h6>
                                <p class="m-0">M.B, B.S, MMed.Sc(Paediatric)<br>		
									</p><p class="m-1"> Mon-Wed: 10:00AM-12:00PM</p>
                            </div>
							
                        </div>
                    </div>
                </div>  
				<div class="team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="kaung.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>Doctor Kaung Myat Muu</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Oncologist</h6>
                                <p class="m-0">M.B, B.S, MMed.Sc(Onco)<br>
								</p>
								<p class="m-1"> Mon-Wed: 12:00AM-1:00PM</p>
                            </div>
							
                        </div>
                    </div>
                </div>
                <div class="team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" src="doctor3.jpg" style="object-fit: cover;">
                        </div>
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-0 p-4">
                                <h3>Doctor Naing Min</h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">Nutritionist</h6>
                                <p class="m-0">M.B, B.S, M.Sc(Nutrition_USA)<br>
								M.AND(USA), M.SNDA(Singapore)<br>
								</p><p class="m-1"> Mon-Wed: 10:00AM-11:00AM</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->

 <!-- Blog Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Blog Post</h5>
                <h1 class="display-4">Our Latest Medical Blog Posts</h1>
            </div>
            <div class="row g-5">
                <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                       <img class="img-fluid w-100" src="img/firstaid.jpg" alt="">
                        <div class="p-4">
                            First Aid Training At<br> Sport Stadium In <br>Taunggyi
                            <p class="m-0">Our Cherry team made free first aid courses for anyone who are interested in emergency aid treaments.....</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/logo.jpg" width="25" height="25" alt="">
                                <small>CHERRY</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                        <img class="img-fluid w-100" src="img/donate-oldPeople.jpg" alt="">
                        <div class="p-4">
                            Donating Medicines And Nutritional Supplies to 60-year-old grandparents
                            <p class="m-0">Grandparents over the age of 60 were supported by 
							our Cherry team with medicine and nutritional supplements....</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/logo.jpg" width="25" height="25" alt="">
                                <small>CHERRY</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                        <img class="img-fluid w-100" src="img/hiv-lecture.jpg" alt="">
                        <div class="p-4">
                            We participated in AIDS(HIV) PREVENTION COURSE at Myat Taw Win
                            <p class="m-0">Our Cherry team also participated in sharing information related to the shidelding from AIDS(HIV).....</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/logo.jpg" width="25" height="25" alt="">
                                <small>CHERRY</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div>           <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                       <img class="img-fluid w-100" src="img/flu-vaccin.jpg" alt="">
                        <div class="p-4">
                            Flu Vaccine were injected FREE to anyone at Sao San Htun Hospital
                            <p class="m-0">In order to reduce the number of deaths due to the flu, our team members and hospitals cooperatead...</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/logo.jpg" width="25" height="25" alt="">
                                <small>CHERRY</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                      <img class="img-fluid w-100" src="img/orphan.jpg" alt="">
                        <div class="p-4">
                            Provided nutrient meals and donated money at Shin Than Chin Orphanage.
                            <p class="m-0">Our team has participated in cooking meals, fed childern, played with and gave gifts and also donated money....</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/logo.jpg" width="25" height="25" alt="">
                                <small>CHERRY</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                        <img class="img-fluid w-100" src="img/covid.jpg" alt="">
                        <div class="p-4">
                            The Covid vaccine <br>was injected at<br> Pan Hlaing Hospital
                            <p class="m-0">For the convenience of citizens who wanted vaccination against Covid, successfully injected at Pa Hlain Hospital...</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/logo.jpg" width="25" height="25" alt="">
                                <small>CHERRY</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
								
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
	</div>
    <!-- Blog End -->
    

   <!-- Footer Start -->
    <%@include file="footer.jsp" %>
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