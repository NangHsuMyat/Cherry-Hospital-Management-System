package Servlet;



import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Insert.DoctorDao;

@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int appointmentId = Integer.parseInt(request.getParameter("appointmentId"));

        try (Connection con = DoctorDao.getConnection();
             PreparedStatement ps = con.prepareStatement("DELETE FROM appointments WHERE id=?")) {
            ps.setInt(1, appointmentId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("viewAppointmentByAdmin.jsp"); // redirect back to appointments page
    }
}

