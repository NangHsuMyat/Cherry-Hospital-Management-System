<%@page import="SignUp.UserDao"%>
<%@page import="javax.servlet.http.HttpSession"%>
<jsp:useBean id="u" class="SignUp.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    String status = UserDao.SignUpUser(u);


    if ("success".equals(status)) {
        // Create session and store the user name
        
        HttpSession session1 = request.getSession(true);
        session.setAttribute("Id", u.getUid());  
        session.setAttribute("Name", u.getUname());  
        session.setAttribute("Email", u.getUemail());
        session.setAttribute("Password",u.getUpassword());
        session.setAttribute("Phone",u.getUphoneno());
        session.setAttribute("bloodtype",u.getUbloodtype());


        response.sendRedirect("index.jsp");
    } else {
        // Handle failure (optional)
        out.println("Signup failed!");
    }
%>

	    
	    

	    User user = UserDao.findUserByEmailOrPhoneAndPassword(emailOrPhone, password);
	    if (user != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("Id", userId);  // <-- set user id here!
	        session.setAttribute("Name", user.getUname()); 
	        session.setAttribute("Email", user.getUemail());
	        session.setAttribute("Password", user.getUpassword());
	        session.setAttribute("Phone", user.getUphoneno());
