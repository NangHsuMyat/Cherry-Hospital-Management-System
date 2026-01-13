package Insert;

import java.sql.Date;

public class Appointment {
    private int appointmentId;  // rename from aid to appointmentId for clarity
    private int userId;
    private int doctorId;
    private Date appointmentDate;
    private String dname;

    public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	// Getters and setters
    public int getAppointmentId() {
        return appointmentId;
    }
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getDoctorId() {
        return doctorId;
    }
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public Date getAppointmentDate() {
        return appointmentDate;
    }
    public void setAppointmentDate(Date appointmentDate) {
        this.appointmentDate = appointmentDate;
    }
}
