package Servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import SignUp.UserDao;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("Name") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        

        String oldName = (String) session.getAttribute("Name");

        String uname = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String upassword = request.getParameter("upassword");
        String uphoneno = request.getParameter("uphoneno");
        
        System.out.println("Name :"+uname);
        System.out.println("Email :"+uemail);
        System.out.println("Password :"+upassword);
        System.out.println("Phone No :"+uphoneno);

        boolean success;
        if (upassword != null && !upassword.trim().isEmpty()) {
            success = userDao.updateProfile(oldName, uname, uemail, upassword, uphoneno);
        } else {
            success = userDao.updateProfileNoPassword(oldName, uname, uemail, uphoneno);
        }

        if (success) {
            // Update session values
            session.setAttribute("Name", uname);
            session.setAttribute("Email", uemail);
            session.setAttribute("Phone", uphoneno);
            session.setAttribute("success", "Profile updated successfully.");
        } else {
            session.setAttribute("error", "Profile update failed.");
        }

        response.sendRedirect("myprofile.jsp");
    }
}