package com.station;

public class Party {
	private int id;
	private String name;
	private String type;
	private String contactNumber;
	private String noofpeople;
	private String email;

	
	
	public Party(int id, String name, String type, String contactNumber, String noofpeople, String email) {
		super();
		this.id = id;
		this.name = name;
		this.type= type;
		this.contactNumber = contactNumber;
		this.noofpeople = noofpeople;
		this.email = email;
		
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getContactNumber() {
		return contactNumber;
	}



	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}



	public String getNoofpeople() {
		return noofpeople;
	}



	public void setNoofpeople(String noofpeople) {
		this.noofpeople = noofpeople;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}




	
	
}
