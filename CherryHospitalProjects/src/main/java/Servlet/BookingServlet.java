package Servlet;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Insert.DoctorDao;
import Insert.Doctors;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("Id") == null) {
            request.setAttribute("message", "You must be logged in to book an appointment.");
            request.getRequestDispatcher("BookingSuccess.jsp").forward(request, response);
            return;
        }

        int userId = (int) session.getAttribute("Id");
        String doctorIdStr = request.getParameter("id");
        String appointmentDateStr = request.getParameter("appointmentDate");

        try {
            int doctorId = Integer.parseInt(doctorIdStr);
            Date appointmentDate = Date.valueOf(appointmentDateStr);

            Doctors doctor = DoctorDao.getDoctorById1(doctorId);
            if (doctor == null) {
                request.setAttribute("message", "Selected doctor no longer exists.");
                request.getRequestDispatcher("BookingSuccess.jsp").forward(request, response);
                return;
            }

            // Always set doctor details for JSP
            request.setAttribute("doctorName", doctor.getDname());
            request.setAttribute("doctorSpecialist", doctor.getDspecialist());
            request.setAttribute("appointmentDate", appointmentDate.toString());
            
            


            boolean alreadyBooked = DoctorDao.hasUserBooked(userId, doctorId, appointmentDate);
            int bookingCount = DoctorDao.getBookingCount(doctorId, appointmentDate);
            boolean fullyBooked = bookingCount >= 5;

            if (!alreadyBooked && !fullyBooked) {
                int appointmentId = DoctorDao.insertAppointment2(userId, doctorId, appointmentDate);

                System.out.println("Appointment ID: " + appointmentId);

                if (appointmentId > 0) {
                    request.setAttribute("appointmentId", appointmentId);
                    request.setAttribute("message", "Appointment booked successfully!");
                } else {
                    request.setAttribute("message", "Failed to book appointment. Please try again later.");
                }
            } else if (alreadyBooked) {
                request.setAttribute("message", "You have already booked this appointment.");
            } else if (fullyBooked) {
                request.setAttribute("message", "Doctor is fully booked for this day.");
            }

        } catch (NumberFormatException e) {
            e.printStackTrace();
            request.setAttribute("message", "Invalid input.");
        }

        // Forward to JSP page that shows the message and details
        request.getRequestDispatcher("BookingSuccess.jsp").forward(request, response);
    }
}
