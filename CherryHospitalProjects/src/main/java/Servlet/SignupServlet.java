package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import SignUp.User;
import SignUp.UserDao;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String name = request.getParameter("uname");
        String email = request.getParameter("uemail");
        String phone = request.getParameter("uphoneno");
        String password = request.getParameter("upassword");
        String confirmPassword = request.getParameter("ucpassword");
        String bloodType = request.getParameter("ubloodtype");
        
     // Check if password and confirm password match
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Password and Confirm Password must be the same!");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return; // stop execution
        }
     //  Check phone number: must be 10 digits
        if (!phone.matches("\\d{10}")) {
            request.setAttribute("errorMessage", "Phone number must be exactly 10 digits.");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }

        // Create user object and set fields
        User newUser = new User();
        newUser.setUname(name);
        newUser.setUemail(email);
        newUser.setUpassword(password);
        newUser.setUcpassword(confirmPassword);
        newUser.setUphoneno(phone);
        newUser.setUbloodtype(bloodType);

        try {
            // Insert user in DB and get status
            String status = UserDao.SignUpUser1(newUser);

            if ("success".equals(status)) {
                // User inserted successfully, set session attributes
                HttpSession session = request.getSession(true); // create session if doesn't exist

                session.setAttribute("Id", newUser.getUid());
                session.setAttribute("Name", newUser.getUname());
                session.setAttribute("Email", newUser.getUemail());
                session.setAttribute("Password", newUser.getUpassword());
                session.setAttribute("Phone", newUser.getUphoneno());
                session.setAttribute("BloodType", newUser.getUbloodtype());

                System.out.println("User signed up successfully: ID = " + newUser.getUid());
                response.sendRedirect("index.jsp"); 
            } else {
                System.out.println("Signup failed for user: " + newUser.getUemail());
                response.getWriter().println("Signup failed! Please try again.");
                response.sendRedirect("SignUp.jsp"); 
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("Error Code: " + e.getErrorCode());
            System.err.println("Message: " + e.getMessage());
        }

            
        }
    }

