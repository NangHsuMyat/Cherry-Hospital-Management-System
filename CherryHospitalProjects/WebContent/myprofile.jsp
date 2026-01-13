<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<%
    String uname = (String) session.getAttribute("Name");
    String uemail = (String) session.getAttribute("Email");
    String uphoneno = (String) session.getAttribute("Phone");

    if (uname == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CHERRY - My Profile</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <%@ include file="navi.jsp" %>

    <!-- Profile Note Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
               <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5 display-4">My Profile</h5>
                <h5 class="display-7">Update your personal information below</h5>
            </div>
        </div>
    </div>
    <!-- Profile Note End -->

    <!-- Profile Form Start -->
    <div class="row justify-content-center position-relative" style="margin-top: -130px; z-index: 1;">
        <div class="col-lg-8">
            <div class="bg-white rounded p-5 m-5 mb-0">
                <form action="UpdateProfileServlet" method="post">
                    <div class="row g-4">
                        <div class="form-floating col-12 col-sm-6">
                            <input type="text" class="form-control bg-light border-0" 
                                   placeholder="Enter Your Name" style="height: 55px;" 
                                   name="uname" value="<%= uname %>" required>
                            <label style="margin-left: 10px;">Enter your name</label>
                        </div>

                        <div class="form-floating col-12 col-sm-6">
                            <input type="email" class="form-control bg-light border-0" 
                                   placeholder="Enter Your Email" style="height: 55px;" 
                                   name="uemail" value="<%= uemail %>" required>
                            <label style="margin-left: 10px;">Enter your email</label>
                        </div>

                        <div class="form-floating col-12 col-sm-6">
                            <input type="password" class="form-control bg-light border-0" 
                                   placeholder="Enter New Password" style="height: 55px;" 
                                   name="upassword">
                            <label style="margin-left: 10px;">New password (leave blank to keep old)</label>
                        </div>

                       

                        <div class="form-floating col-12 col-sm-6">
                            <input type="tel" class="form-control bg-light border-0" 
                                   placeholder="Enter Your Phone Number" style="height: 55px;" 
                                   name="uphoneno" value="<%= uphoneno %>" required>
                            <label style="margin-left: 10px;">Enter Your Phone Number</label>
                        </div>

                        

                        <div class="text-center">
                            <button class="btn btn-primary w-75 py-3 rounded-pill" type="submit">Update Profile</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Profile Form End -->

    <%@ include file="footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
