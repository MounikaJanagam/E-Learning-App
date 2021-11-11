package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	private String email;
	private String uname;	
	private String pasw;
	private String cnfpasw;
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPasw() {
		return pasw;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCnfpasw() {
		return cnfpasw;
	}
	public void setCnfpasw(String cnfpasw) {
		this.cnfpasw = cnfpasw;
	}
	public void setPasw(String pasw) {
		this.pasw = pasw;
	}
	
	@Override
	public String toString() {
		return "User [ uname=" + uname + ", email=" + email + ", pasw=" + pasw + ", cnfpasw=" + cnfpasw
				+ "]";
	}
	

}

