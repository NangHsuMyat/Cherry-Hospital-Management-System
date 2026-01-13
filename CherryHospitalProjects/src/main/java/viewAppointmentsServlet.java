import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Insert.Appointment;
import Insert.DoctorDao;
import SignUp.UserDao;

@WebServlet("/viewAppointmentsServlet")
public class viewAppointmentsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int userId = (int) request.getSession().getAttribute("userId");
        List<Appointment> appointments = DoctorDao.getAppointmentsByUserId(userId);

        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("viewAppointments.jsp").forward(request, response);
    }
}
