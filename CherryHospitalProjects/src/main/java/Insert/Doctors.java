package Insert;

import java.io.Serializable;
import java.sql.Date;

public class Doctors implements Serializable {
	int id;
	int did;
	int aid;
	String dname;
	String dspecialist;
	String ddegree;
	String dschedule;

	String aemail;
	String apassword;

	Date appointmentDate;

	private int tempDoctorId;
	private int tempAppointmentId;
	private java.sql.Date tempAppointmentDate;

	public int getTempAppointmentId() {
		return tempAppointmentId;
	}

	public void setTempAppointmentId(int tempAppointmentId) {
		this.tempAppointmentId = tempAppointmentId;
	}

	public int getTempDoctorId() {
		return tempDoctorId;
	}

	public void setTempDoctorId(int tempDoctorId) {
		this.tempDoctorId = tempDoctorId;
	}

	public java.sql.Date getTempAppointmentDate() {
		return tempAppointmentDate;
	}

	public void setTempAppointmentDate(java.sql.Date tempAppointmentDate) {
		this.tempAppointmentDate = tempAppointmentDate;
	}

	public Date getAppointmentDate() {
		return appointmentDate;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getAemail() {
		return aemail;
	}

	public void setAemail(String aemail) {
		this.aemail = aemail;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	public int getDid() {
		return id;
	}

	public void setDid(int did) {
		this.id = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDspecialist() {
		return dspecialist;
	}

	public void setDspecialist(String dspecialist) {
		this.dspecialist = dspecialist;
	}

	public String getDdegree() {
		return ddegree;
	}

	public void setDdegree(String ddegree) {
		this.ddegree = ddegree;
	}

	public String getDschedule() {
		return dschedule;
	}

	public void setDschedule(String dschedule) {
		this.dschedule = dschedule;
	}
	
	private String UName;
	private String UEmail;
	private String UPhoneno;

	public String getUName() { return UName; }
	public void setUName(String UName) { this.UName = UName; }

	public String getUEmail() { return UEmail; }
	public void setUEmail(String UEmail) { this.UEmail = UEmail; }

	public String getUPhoneno() { return UPhoneno; }
	public void setUPhoneno(String UPhoneno) { this.UPhoneno = UPhoneno; }


}
