package com.train.bean;


public class User {

	private String username;
	private String password;
	private int idtype;
	private String name;
	private String idnumber;
	private String email;
	private String phonenumber;
	private int travelertype;
	private int user_id;

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return this.username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}

	public void setIdtype(int idtype) {
		this.idtype = idtype;
	}

	public int getIdtype() {
		return this.idtype;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getIdnumber() {
		return this.idnumber;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return this.email;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getPhonenumber() {
		return this.phonenumber;
	}

	public void setTravelertype(int travelertype) {
		this.travelertype = travelertype;
	}

	public int getTravelertype() {
		return this.travelertype;
	}
	
	public void setUser_id(int user_id){
		this.user_id = user_id;
	}
	
	public int getUser_id(){
		return this.user_id;
	}
	

//	// ÷ÿ–¥toString ∑Ω∑®
//	@Override
//	public String toString() {
//		return "User [id=" + id + ", name=" + name + ", password=" + password
//				+ ", email=" + email + ", phone=" + phone + "]";
//	}
}
