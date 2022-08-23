package com.runner.empEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {

  @Column(name = "employee_Id")
	private int employeeId;
  
  @Column(name = "first_name")
	private String employeeName;
  
  @Column(name = "salary")
	private int salary;
  
  @Column(name = "gender")
	private String gender;
  
  @Column(name = "email_Id")
	private String emailId;
  
  @Column(name = "password")
	private String password;
  @Column(name = "image")
	private String image;
	 
	
	@Id
	// @GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	 
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
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
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", salary=" + salary
				+ ", gender=" + gender + ", emailId=" + emailId + ", password=" + password + ", image=" + image + "]";
	}
	
	
	
	
}
