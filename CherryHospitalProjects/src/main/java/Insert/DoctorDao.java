
package Insert;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import SignUp.User;

public class DoctorDao {

	public static Connection getConnection() throws SQLException {// connection is the return type so we need to return
																	// it and getconnection() you can give any name

		Connection con = null;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}

	public static String InsertAdmin(Doctors d) throws SQLException {

		String status = null;

		Connection con1 = getConnection();

		PreparedStatement ps = con1.prepareStatement("insert into admin values(?,?)");

		ps.setString(2, d.getAemail());
		ps.setString(3, d.getApassword());
		
		ps.executeUpdate();

		status = "success";

		return status;

	}
	// Admin

	public static Doctors validateAdmin(String emailOrPhone, String password) {
	    Doctors admin = null;
	    try {
	        Connection con = getConnection();
	        String sql = "SELECT * FROM admin WHERE email = ? AND password = ?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, emailOrPhone.trim());
	        ps.setString(2, password.trim());

	        System.out.println("Executing query with: " + emailOrPhone + " / " + password);

	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            System.out.println("User found!");
	            admin = new Doctors();
	            admin.setAemail(rs.getString("email"));
	            admin.setApassword(rs.getString("password"));
	        } else {
	            System.out.println("No matching user found.");
	        }
	        rs.close();
	        ps.close();
	        con.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return admin;
	}

	public static String InsertDoctors(Doctors d) throws SQLException {

		String status = null;

		Connection con1 = getConnection();

		PreparedStatement ps = con1.prepareStatement("insert into DOCTORDETAILS (dname,dspecialist,ddegree,dschedule) values(?,?,?,?)");
		
		ps.setString(1, d.getDname());
		ps.setString(2, d.getDspecialist());
		ps.setString(3, d.getDdegree());
		ps.setString(4, d.getDschedule());
		

		ps.executeUpdate();

		status = "success";

		return status;

	}

	public static List<Doctors> getDoctors() {
	    List<Doctors> list = new ArrayList<>();

	    String sql = "SELECT id, dname, dspecialist, ddegree, dschedule FROM doctordetails";

	    try (Connection con = getConnection();
	         PreparedStatement ps = con.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        while (rs.next()) {
	            Doctors d = new Doctors();
	            d.setDid(rs.getInt("id"));
	            d.setDname(rs.getString("dname"));
	            d.setDspecialist(rs.getString("dspecialist"));
	            d.setDdegree(rs.getString("ddegree"));
	            d.setDschedule(rs.getString("dschedule"));
	            list.add(d);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return list;
	}


	public static List<Doctors> getDoctorsbyID(int Did) {
	    List<Doctors> list = new ArrayList<>();

	    try {
	        Connection con = getConnection();
	        String sql = "SELECT * FROM DOCTORDETAILS WHERE ID=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setInt(1, Did);

	        ResultSet rs = ps.executeQuery(); // ✅ Correct method

	        while (rs.next()) {
	            Doctors d = new Doctors();
	            d.setDid(rs.getInt(1));
	            d.setDname(rs.getString(2));
	            d.setDspecialist(rs.getString(3));
	            d.setDdegree(rs.getString(4));
	            d.setDschedule(rs.getString(5));
	            
	            list.add(d);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return list;
	}


	public static boolean updateDoctors(Doctors d) {
	    boolean status = false;

	    try (Connection con = getConnection()) {
	        System.out.println("Updating doctor with ID: " + d.getDid());
	        System.out.println("Name: " + d.getDname());
	        System.out.println("Specialist: " + d.getDspecialist());
	        System.out.println("Degree: " + d.getDdegree());
	        System.out.println("Schedule: " + d.getDschedule());

	        PreparedStatement ps = con.prepareStatement(
	            "UPDATE DOCTORDETAILS SET Dname=?, Dspecialist=?, Ddegree=?, Dschedule=? WHERE Id=?"
	        );
	        ps.setString(1, d.getDname());
	        ps.setString(2, d.getDspecialist());
	        ps.setString(3, d.getDdegree());
	        ps.setString(4, d.getDschedule());
	        ps.setInt(5, d.getDid());

	        int i = ps.executeUpdate();
	        System.out.println("Rows affected: " + i);
	        status = (i > 0);

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return status;
	}



	public static boolean deleteDoctor(int id) {
		boolean status = false;

		try {
			Connection con = getConnection();

			PreparedStatement ps = con.prepareStatement("delete from DOCTORDETAILS where Id=?");

			ps.setInt(1, id);

			int i = ps.executeUpdate();

			if (i > 0) {
				status = true;
			}

			else
				status = false;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}

	public static List<Doctors> getDoctorsByName(String name) {
		List<Doctors> list = new ArrayList<>();

		try {
			Connection con = getConnection();
			PreparedStatement ps;

			String sql = "select* from DOCTORDETAILS where DNAME=?";

			ps = con.prepareStatement(sql);
			ps.setString(1, name);

			ps.executeUpdate();

			ResultSet rs = ps.getResultSet();

			while (rs.next()) {

				Doctors d = new Doctors();
				d.setDid(rs.getInt(1));
				d.setDname(rs.getString(2));
				d.setDspecialist(rs.getString(3));
				d.setDdegree(rs.getString(4));
				d.setDschedule(rs.getString(5));
				list.add(d);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public static List<Doctors> getDoctorsBySpecialist(String specialist) {
		List<Doctors> list = new ArrayList<>();

		try {
			Connection con = getConnection();
			PreparedStatement ps;

			String sql = "select* from DOCTORDETAILS where Dspecialist=?";

			ps = con.prepareStatement(sql);
			ps.setString(1, specialist);

			ps.executeUpdate();

			ResultSet rs = ps.getResultSet();

			while (rs.next()) {

				Doctors d = new Doctors();
				d.setDid(rs.getInt(1));
				d.setDname(rs.getString(2));
				
				d.setDspecialist(rs.getString(3));
				

				d.setDdegree(rs.getString(4));
				d.setDschedule(rs.getString(5));
				list.add(d);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<String> doctordropdown() {
		List<String> list = new ArrayList<>();
		try {
			Connection con = getConnection();
			PreparedStatement ps;

			String sql = "select Dname from DOCTORDETAILS";
			ps = con.prepareStatement(sql);

			ps.executeUpdate();

			ResultSet rs = ps.getResultSet();

			while (rs.next()) {
				Doctors d = new Doctors();
				String dd = rs.getString("Dname");
				list.add(dd);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<String> doctordropdownsp() {
		List<String> list = new ArrayList<>();
		try {
			Connection con = getConnection();
			PreparedStatement ps;

			String sql = "select distinct Dspecialist from DOCTORDETAILS";
			ps = con.prepareStatement(sql);

			ps.executeUpdate();

			ResultSet rs = ps.getResultSet();

			while (rs.next()) {

				String dd = rs.getString("Dspecialist");
				list.add(dd);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<String> doctordropdownspp() {
		List<String> list = new ArrayList<>();
		try {
			Connection con = getConnection();
			PreparedStatement ps;

			String sql = "select distinct Dspecialist from DOCTORDETAILS";
			ps = con.prepareStatement(sql);

			ps.executeUpdate();

			ResultSet rs = ps.getResultSet();

			while (rs.next()) {

				String dd = rs.getString("Dspecialist");
				list.add(dd);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
	
	  public static int getBookingCount(int doctorId, Date appointmentDate) {
	        String sql = "SELECT COUNT(*) FROM appointments WHERE doctor_id = ? AND appointment_date = ?";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setInt(1, doctorId);
	            ps.setDate(2, appointmentDate);
	            try (ResultSet rs = ps.executeQuery()) {
	                if (rs.next()) {
	                    return rs.getInt(1);
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return 0;  // On error, assume no bookings
	    }

	    // Check if a user already booked doctor on that date
	    public static boolean hasUserBooked(int userId, int doctorId, Date appointmentDate) {
	        String sql = "SELECT 1 FROM appointments WHERE user_id = ? AND doctor_id = ? AND appointment_date = ?";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setInt(1, userId);
	            ps.setInt(2, doctorId);
	            ps.setDate(3, appointmentDate);
	            try (ResultSet rs = ps.executeQuery()) {
	                return rs.next();  // true if any row exists
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }

	    // Insert new appointment
	    public static boolean insertAppointment(int userId, int doctorId, Date appointmentDate) {
	        // First, check if doctor already has 5 bookings for that day
	        int count = getBookingCount(doctorId, appointmentDate);
	        if (count >= 5) {
	            System.out.println("Doctor already has 5 appointments on this date.");
	            return false; // Prevent insert
	        }

	        // Also check if this user already booked this doctor on the same date
	        if (hasUserBooked(userId, doctorId, appointmentDate)) {
	            System.out.println("User already booked this doctor on this date.");
	            return false; // Prevent insert
	        }

	        String sql = "INSERT INTO appointments (user_id, doctor_id, appointment_date) VALUES (?, ?, ?)";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setInt(1, userId);
	            ps.setInt(2, doctorId);
	            ps.setDate(3, appointmentDate);
	            int rows = ps.executeUpdate();
	            return rows > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	    

	    public static boolean insertAppointment1(int userId, int doctorId, Date appointmentDate) {
	        // First, check if doctor already has 5 bookings for that day
	        int count = getBookingCount(doctorId, appointmentDate);
	        if (count >= 5) {
	            System.out.println("Doctor already has 5 appointments on this date.");
	            return false; // Prevent insert
	        }

	        // Also check if this user already booked this doctor on the same date
	        if (hasUserBooked(userId, doctorId, appointmentDate)) {
	            System.out.println("User already booked this doctor on this date.");
	            return false; // Prevent insert
	        }

	        String sql = "INSERT INTO appointments (user_id, doctor_id, appointment_date) VALUES (?, ?, ?)";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setInt(1, userId);
	            ps.setInt(2, doctorId);
	            ps.setDate(3, appointmentDate);

	            int rows = ps.executeUpdate();
	            return rows > 0;  // true if insert succeeded
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;  // failed to insert
	    }


	    public static Doctors getDoctorById1(int doctorId) {
	        Doctors doctor = null;
	        String sql = "SELECT * FROM doctordetails WHERE id = ?";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {
	            
	            ps.setInt(1, doctorId);
	            
	            try (ResultSet rs = ps.executeQuery()) {
	                if (rs.next()) {
	                    doctor = new Doctors();
	                    doctor.setDid(rs.getInt("id"));
	                    doctor.setDname(rs.getString("dname"));
	                    doctor.setDspecialist(rs.getString("dspecialist"));
	                    doctor.setDdegree(rs.getString("ddegree")); // if you store degree
	                    // add more fields if needed
	                }
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return doctor;
	    }
//Updating Appointment
	    public static int insertAppointment2(int userId, int doctorId, Date appointmentDate) {
	        int generatedId = -1;

	        String sql = "INSERT INTO appointments (id, user_id, doctor_id, appointment_date) " +
	                     "VALUES (APPOINTMENT_SEQ.NEXTVAL, ?, ?, ?)";

	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql, new String[]{"ID"})) { // "ID" must match column name in DB

	            ps.setInt(1, userId);
	            ps.setInt(2, doctorId);
	            ps.setDate(3, appointmentDate);

	            int rows = ps.executeUpdate();

	            if (rows > 0) {
	                // Retrieve the generated ID using a separate query (safer in Oracle)
	                try (PreparedStatement ps2 = con.prepareStatement("SELECT APPOINTMENT_SEQ.CURRVAL FROM dual");
	                     ResultSet rs = ps2.executeQuery()) {

	                    if (rs.next()) {
	                        generatedId = rs.getInt(1);
	                    }
	                }
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return generatedId; // returns appointment ID or -1 if failed
	    }





	    // Update appointment details
	    public static boolean updateAppointment(int appointmentId, int doctorId, String appointmentDate) {
	        boolean updated = false;

	        String sql = "UPDATE appointments SET doctor_id = ?, appointment_date = ? WHERE id = ?";

	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {

	            ps.setInt(1, doctorId);
	            ps.setDate(2, java.sql.Date.valueOf(appointmentDate)); // convert String to SQL Date
	            ps.setInt(3, appointmentId);

	            int rows = ps.executeUpdate();
	            if (rows > 0) {
	                updated = true;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return updated;
	    }
//For Re Scheduling 
	    public static boolean rescheduleAppointment(int appointmentId, int doctorId, java.sql.Date date) {
	        boolean updated = false;
	        String sql = "UPDATE appointments SET doctor_id = ?, appointment_date = ? WHERE id = ?";

	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {

	            ps.setInt(1, doctorId);
	            ps.setDate(2, date);
	            ps.setInt(3, appointmentId);

	            int rows = ps.executeUpdate();
	            updated = rows > 0;

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return updated;
	    }


	    // Check if user already booked same doctor on same date, excluding current appointment (for update)
	    public static boolean hasUserBookedExcludingAppointment(int userId, int doctorId, Date appointmentDate, int excludeAppointmentId) {
	        String sql = "SELECT 1 FROM appointments WHERE user_id = ? AND doctor_id = ? AND appointment_date = ? AND id <> ?";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {
	            ps.setInt(1, userId);
	            ps.setInt(2, doctorId);
	            ps.setDate(3, appointmentDate);
	            ps.setInt(4, excludeAppointmentId);
	            try (ResultSet rs = ps.executeQuery()) {
	                return rs.next();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	   //AppointmentID
	    public static Doctors getAppointmentById(int appointmentId) {
	        Doctors appointment = null;
	        String sql = "SELECT a.id AS id, a.user_id, a.doctor_id, a.appointment_date, " +
	                "d.dname, d.dspecialist, d.ddegree, d.dschedule AS schedule " +
	                "FROM appointments a " +
	                "LEFT JOIN doctordetails d ON a.doctor_id = d.id " +
	                "WHERE a.id = ?";


	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {

	            ps.setInt(1, appointmentId);
	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
	                appointment = new Doctors();  // create a new instance

	                // Appointment info
	                appointment.setTempAppointmentId(rs.getInt("id")); // appointment ID
	                appointment.setTempAppointmentDate(rs.getDate("appointment_date")); // date

	                // Doctor info
	                appointment.setDid(rs.getInt("doctor_id")); // doctor ID
	                appointment.setDname(rs.getString("dname"));
	                appointment.setDspecialist(rs.getString("dspecialist"));
	                appointment.setDdegree(rs.getString("ddegree"));
	                appointment.setDschedule(rs.getString("schedule"));
	            } else {
	                System.out.println("No appointment found for ID: " + appointmentId);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return appointment;
	    }


	    
	    public static List<Appointment> getAppointmentsByUserId(int userId) {
	        List<Appointment> list = new ArrayList<>();

	        try (Connection conn =getConnection()) {
	            String sql = "SELECT a.id, a.appointmentDate, d.dname AS doctorName " +
	                         "FROM appointments a " +
	                         "JOIN doctordetails d ON a.Id = d.id " +
	                         "WHERE a.Id = ?";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setInt(1, userId);

	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                Appointment appt = new Appointment();
	                appt.setAppointmentId(rs.getInt("id"));
	                appt.setAppointmentDate(rs.getDate("appointment_date"));
	                appt.setDname(rs.getString(sql)); // add this getter/setter to Appointment class

	                list.add(appt);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return list;
	    }
	    
	    public static List<Doctors> getAllAppointments() {
	        List<Doctors> list = new ArrayList<>();
	        String sql = "SELECT a.id AS appointment_id, a.appointment_date, " +
	                     "u.name AS patient_name, u.email AS patient_email, u.phone_number AS patient_phone, " +
	                     "d.id AS doctor_id, d.dname AS doctor_name, d.dspecialist AS doctor_specialist, d.ddegree, d.dschedule " +
	                     "FROM appointments a " +
	                     "JOIN signup u ON a.user_id = u.id " +
	                     "JOIN doctordetails d ON a.doctor_id = d.id " +
	                     "ORDER BY a.appointment_date";

	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql);
	             ResultSet rs = ps.executeQuery()) {

	            while (rs.next()) {
	                Doctors appt = new Doctors();

	                // Appointment info
	                appt.setTempAppointmentId(rs.getInt("appointment_id"));
	                appt.setTempAppointmentDate(rs.getDate("appointment_date"));

	                // Patient info
	                appt.setUName(rs.getString("patient_name"));
	                appt.setUEmail(rs.getString("patient_email"));
	                appt.setUPhoneno(rs.getString("patient_phone"));

	                // Doctor info
	                appt.setDid(rs.getInt("doctor_id"));
	                appt.setDname(rs.getString("doctor_name"));
	                appt.setDspecialist(rs.getString("doctor_specialist"));
	                appt.setDdegree(rs.getString("ddegree"));
	                appt.setDschedule(rs.getString("dschedule"));

	                list.add(appt);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return list;
	    }

	    public static List<Doctors> getAvailableDoctors(java.sql.Date appointmentDate) {
	        List<Doctors> list = new ArrayList<>();
	        String sql = "SELECT d.id, d.dname, d.dspecialist, d.ddegree, d.dschedule " +
	                     "FROM doctordetails d " +
	                     "WHERE d.id NOT IN (" +
	                     "  SELECT doctor_id FROM appointments WHERE appointment_date = ?" +
	                     ")";
	        try (Connection con = getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {

	            ps.setDate(1, appointmentDate);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                Doctors d = new Doctors();
	                d.setDid(rs.getInt("id"));
	                d.setDname(rs.getString("dname"));
	                d.setDspecialist(rs.getString("dspecialist"));
	                d.setDdegree(rs.getString("ddegree"));
	                d.setDschedule(rs.getString("dschedule"));
	                list.add(d);
	            }
	            rs.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return list;
	    }

	}

	



