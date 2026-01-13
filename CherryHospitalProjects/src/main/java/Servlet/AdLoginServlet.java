package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Insert.DoctorDao;
import Insert.Doctors;



@WebServlet("/AdLoginServlet")
public class AdLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
          throws ServletException, IOException {
        
        String emailOrPhone = request.getParameter("aemail");
        String password = request.getParameter("apassword");

        System.out.println("Email or Phone: " + emailOrPhone);
        System.out.println("Password: " + password);

       
	    Doctors admin = DoctorDao.validateAdmin(emailOrPhone, password);

        if (admin != null) {
            HttpSession session = request.getSession();
            
            session.setAttribute("Email", admin.getAemail());
            session.setAttribute("Password", admin.getApassword());

            response.sendRedirect("viewData.jsp");
        } else {
            request.setAttribute("error", "Invalid email/phone or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
