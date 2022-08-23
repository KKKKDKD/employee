package com.runner.empDTO;

import com.fasterxml.jackson.annotation.JsonProperty;

public class EmployeeDTO {

	
	private int employeeId;
	//@JsonProperty("namekk")
	private String employeeNames;
	private int salary;
	private String lllll;
	private String gender;
	private String emailId;
	private String password;
	private String image;
	
	

	public EmployeeDTO() {
	
		// TODO Auto-generated constructor stub
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	
	public String getEmployeeNames() {
		return employeeNames;
	}
	public void setEmployeeNames(String employeeNames) {
		this.employeeNames = employeeNames;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "EmployeeDTO [employeeId=" + employeeId + ", employeeNames=" + employeeNames + ", salary=" + salary
				+ ", gender=" + gender + ", emailId=" + emailId + ", password=" + password + ", image=" + image + "]";
	}
	
	
}
