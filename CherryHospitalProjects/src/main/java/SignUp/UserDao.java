package SignUp;

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

import Insert.Doctors;

public class UserDao {//data access object
	
	public static Connection getConnection() throws SQLException{//connection is the return type so we need to return it and getconnection() you can give any name
	
		Connection con=null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	
	
	/*public static String SignUpUser(User u) throws SQLException {
		
		
		
		String status=null;
		
		Connection con1=getConnection();
		
		PreparedStatement ps=con1.prepareStatement("insert into SIGNUP values(?,?,?,?,?,?)");
		
		ps.setString(1,u.getUname());
		ps.setString(2,u.getUemail());
		ps.setString(3,u.getUpassword());
		ps.setString(4,u.getUcpassword());
		ps.setString(5,u.getUphoneno());
		ps.setString(6,u.getUbloodtype());
		
		ps.executeUpdate();
		
		status="success";
		
		return status;
		
	}*/
	public static String SignUpUser1(User u) throws SQLException {
	    String status = null;
	    Connection con = getConnection();

	    String sql = "INSERT INTO signup (id, name, email, password, confirm_password, phone_number, blood_type) " +
	                 "VALUES (signup_seq.NEXTVAL, ?, ?, ?, ?, ?, ?)";

	    PreparedStatement ps = con.prepareStatement(sql);

	    ps.setString(1, u.getUname());
	    ps.setString(2, u.getUemail());
	    ps.setString(3, u.getUpassword());
	    ps.setString(4, u.getUcpassword());
	    ps.setString(5, u.getUphoneno());
	    ps.setString(6, u.getUbloodtype());

	    int rowsInserted = ps.executeUpdate();

	    if (rowsInserted > 0) {
	        // Now fetch the generated ID using CURRVAL
	        String getIdSql = "SELECT signup_seq.CURRVAL FROM dual";
	        PreparedStatement ps2 = con.prepareStatement(getIdSql);
	        ResultSet rs = ps2.executeQuery();
	        if (rs.next()) {
	            int id = rs.getInt(1);
	            u.setUid(id);
	            status = "success";
	        }
	        rs.close();
	        ps2.close();
	    } else {
	        status = "fail";
	    }

	    ps.close();
	    con.close();

	    return status;
	}

	
	
//Signup user
	public static String SignUpUser(User u) throws SQLException {			
		
			
			String status=null;
			
			Connection con1=getConnection();
			
			PreparedStatement ps=con1.prepareStatement("INSERT INTO signup (id, name, email, password, confirm_password, phone_number, blood_type) VALUES (signup_seq.NEXTVAL, ?, ?, ?, ?, ?, ?)");
	
			
			ps.setString(1,u.getUname());
			ps.setString(2,u.getUemail());
			ps.setString(3,u.getUpassword());
			ps.setString(4,u.getUcpassword());
			ps.setString(5,u.getUphoneno());
			ps.setString(6,u.getUbloodtype());
			ps.executeUpdate();
			status="success";
			
			return status;
			
		}
	//get Email or password
	public static User findUserByEmailOrPhoneAndPassword(String emailOrPhone, String password) {
	    User user = null;
	    try {
	        Connection con = getConnection(); // Your method to get DB connection

	        String sql = "SELECT * FROM signup WHERE (email = ? OR phone_number = ?) AND password = ?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, emailOrPhone);
	        ps.setString(2, emailOrPhone);
	        ps.setString(3, password);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            user = new User();
	            user.setUname(rs.getString("name"));
	            user.setUemail(rs.getString("email"));
	            user.setUpassword(rs.getString("password"));
	            user.setUphoneno(rs.getString("phone_number"));
	            user.setUbloodtype(rs.getString("blood_type"));
	        }

	        rs.close();
	        ps.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user;
	}


	//User Login
	public static List<User> getUser(){
		List<User> list=new ArrayList<User>();
		
		try {
			Connection con=getConnection();
			PreparedStatement ps;
			
			String sql="select* from signup";
			
			ps=con.prepareStatement(sql);
			
			ps.executeUpdate();
			
			ResultSet rs=ps.getResultSet();
			
			while(rs.next()) {
				
				User u=new User();
				u.setUid(rs.getInt(1));
				u.setUname(rs.getString(2));
				u.setUemail(rs.getString(3));
				u.setUpassword(rs.getString(4));
				u.setUcpassword(rs.getString(5));
				u.setUphoneno(rs.getString(6));
				u.setUbloodtype(rs.getString(7));
				list.add(u);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}

	public static int getUserIdByEmailAndPassword(String email, String password) {
	    int userId = 0;
	    String sql = "SELECT id FROM signup WHERE email = ? AND password = ?";
	    try (Connection con = getConnection();
	         PreparedStatement ps = con.prepareStatement(sql)) {
	         
	        ps.setString(1, email);
	        ps.setString(2, password);
	        
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            userId = rs.getInt("id");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return userId;
	}


	public boolean updateProfile(String oldName, String uname, String uemail, String upassword, String uphoneno) {
	    String sql = "UPDATE signup SET name=?, email=?, password=?, phone_number=? WHERE name=?";
	    try (Connection conn = getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {

	        stmt.setString(1, uname);
	        stmt.setString(2, uemail);
	        stmt.setString(3, upassword);
	        stmt.setString(4, uphoneno);
	        stmt.setString(5, oldName);
	        
	        System.out.println("DAO updateProfile called with:");
	        System.out.println("Name: " + uname);
	        System.out.println("Email: " + uemail);
	        System.out.println("Password: " + upassword);
	        System.out.println("Phone: " + uphoneno);
	        System.out.println("OldName: " + oldName);


	        return stmt.executeUpdate() > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}

	// Update profile WITHOUT changing password
	public boolean updateProfileNoPassword(String oldName, String uname, String uemail, String uphoneno) {
	    String sql = "UPDATE signup SET name=?, email=?, phone_number=? WHERE name=?";
	    try (Connection conn = getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {

	        stmt.setString(1, uname);
	        stmt.setString(2, uemail);
	        stmt.setString(3, uphoneno);
	        stmt.setString(4, oldName);

	        System.out.println("DAO updateProfileNoPassword called with:");
	        System.out.println("Name: " + uname);
	        System.out.println("Email: " + uemail);
	        System.out.println("Phone: " + uphoneno);
	        System.out.println("OldName: " + oldName);

	        return stmt.executeUpdate() > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}
}

	    