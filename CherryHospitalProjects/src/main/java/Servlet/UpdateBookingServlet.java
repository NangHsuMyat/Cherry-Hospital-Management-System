package Servlet;

import Insert.DoctorDao;
import Insert.Doctors;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handle GET request - display current appointment info
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("aid");
        if (idParam == null || idParam.trim().isEmpty()) {
            response.getWriter().println("No appointment ID provided!");
            return;
        }

        int appointmentId = Integer.parseInt(idParam);

        // Get appointment details
        Doctors appointment = DoctorDao.getAppointmentById(appointmentId);
        if (appointment == null) {
            response.getWriter().println("Appointment not found!");
            return;
        }

        // Set attributes for JSP
        request.setAttribute("aid", appointmentId);
        request.setAttribute("currentDoctorId", appointment.getTempDoctorId());
        request.setAttribute("currentDate", appointment.getTempAppointmentDate().toString());

        // List of doctors for dropdown
        List<Doctors> doctorsList = DoctorDao.getDoctors();
        request.setAttribute("list", doctorsList);

        request.getRequestDispatcher("UpdateAppointment.jsp").forward(request, response);
    }

    // Handle POST request - update appointment
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String appointmentIdStr = request.getParameter("appointmentId");
        String doctorIdStr = request.getParameter("doctorId");
        String appointmentDateStr = request.getParameter("appointmentDate");

        if (appointmentIdStr == null || appointmentIdStr.trim().isEmpty() ||
            doctorIdStr == null || doctorIdStr.trim().isEmpty() ||
            appointmentDateStr == null || appointmentDateStr.trim().isEmpty()) {
            response.getWriter().println("All fields are required!");
            return;
        }

        try {
            int appointmentId = Integer.parseInt(appointmentIdStr);
            int doctorId = Integer.parseInt(doctorIdStr);
            Date appointmentDate = Date.valueOf(appointmentDateStr);

            boolean success = DoctorDao.rescheduleAppointment(appointmentId, doctorId, appointmentDate);

            if (success) {
                // Redirect to GET to show updated appointment form
                response.sendRedirect("UpdateBookingServlet?aid=" + appointmentId);
            } else {
                response.getWriter().println("Error: Could not update appointment.");
            }

        } catch (NumberFormatException e) {
            response.getWriter().println("Invalid number format.");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error occurred: " + e.getMessage());
        }
    }
}
