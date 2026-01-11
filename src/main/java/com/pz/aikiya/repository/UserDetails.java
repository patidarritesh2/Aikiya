package com.pz.aikiya.repository;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
	@Table(name = "usersDetails")
public class UserDetails {

    
	  @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
		private String lastName;
	    private String companyName;
	    @Column(unique = true)
	    private String aadhaarNumber;
	    private String mobileNumber;
	    private String address;
	    
	    private String firstName;
	    public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getCompanyName() {
			return companyName;
		}
		public void setCompanyName(String companyName) {
			this.companyName = companyName;
		}
		public String getAadhaarNumber() {
			return aadhaarNumber;
		}
		public void setAadhaarNumber(String aadhaarNumber) {
			this.aadhaarNumber = aadhaarNumber;
		}
		public String getMobileNumber() {
			return mobileNumber;
		}
		public void setMobileNumber(String mobileNumber) {
			this.mobileNumber = mobileNumber;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
	


}
