package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SignUp.User;
import SignUp.UserDao;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String emailOrPhone = request.getParameter("uemail");
	    String password = request.getParameter("upassword");
	    
	    System.out.print("Email:"+emailOrPhone);
	    System.out.print("Password:"+password);

	    int userId = UserDao.getUserIdByEmailAndPassword(emailOrPhone, password);

	    
	    

	    User user = UserDao.findUserByEmailOrPhoneAndPassword(emailOrPhone, password);
	    if (user != null) {
	        HttpSession session = request.getSession(true);
	        session.setAttribute("Id", userId);  // <-- set user id here!
	        session.setAttribute("Name", user.getUname()); 
	        session.setAttribute("Email", user.getUemail());
	        session.setAttribute("Password", user.getUpassword());
	        session.setAttribute("Phone", user.getUphoneno());

	        response.sendRedirect("index.jsp");
	    } else {
	        request.setAttribute("error", "Invalid email/phone or password");
	        request.getRequestDispatcher("login.jsp").forward(request, response);
	    }
	}

	}


