package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Insert.DoctorDao;

@WebServlet("/CancelBookingServlet")
public class CancelBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	String appointmentIdStr = request.getParameter("aid");

        if (appointmentIdStr == null || appointmentIdStr.trim().isEmpty()) {
            response.sendRedirect("Booking.jsp?message=No+appointment+selected");
            return;
        }

        try {
            int appointmentId = Integer.parseInt(appointmentIdStr);
            boolean deleted = deleteAppointment(appointmentId);

            if (deleted) {
                response.sendRedirect("Booking.jsp?message=Appointment+cancelled+successfully");
            } else {
                response.sendRedirect("Booking.jsp?message=Could+not+cancel+appointment");
            }
        } catch (NumberFormatException e) {
            // If the ID is not a valid number, redirect back with a message
            response.sendRedirect("Booking.jsp?message=Invalid+appointment+ID");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Booking.jsp?message=Error+occurred+while+cancelling");
        }
    }

    private boolean deleteAppointment(int appointmentId) {
        boolean deleted = false;
        try {
            Connection con = DoctorDao.getConnection();
            String sql = "DELETE FROM appointments WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, appointmentId);
            int rows = ps.executeUpdate();
            deleted = rows > 0;
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deleted;
    }
}
