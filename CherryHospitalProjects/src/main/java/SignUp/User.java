package SignUp;

import java.io.Serializable;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	String uname;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUcpassword() {
		return ucpassword;
	}
	public void setUcpassword(String ucpassword) {
		this.ucpassword = ucpassword;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUbloodtype() {
		return ubloodtype;
	}
	public void setUbloodtype(String ubloodtype) {
		this.ubloodtype = ubloodtype;
	}
	public String getUphoneno() {
		return uphoneno;
	}
	public void setUphoneno(String uphoneno) {
		this.uphoneno = uphoneno;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	String upassword;
	String ucpassword;
	String uemail;
	String ubloodtype;
	String uphoneno;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	int uid;
	
	
	
	
	
	

}
