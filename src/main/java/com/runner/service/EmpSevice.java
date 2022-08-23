package com.runner.service;

import java.util.List;


import com.runner.empDTO.EmployeeDTO;

public interface EmpSevice {
	public List<EmployeeDTO> getAllEmployee();
	
	String saveEmployee(EmployeeDTO employeeDTO);
	
	public EmployeeDTO authenticateEmp(String emailId, String password);

	public void authenticateEmp(int employeeId);

	public EmployeeDTO getIdEmployee(int employeeId);
	



	
	
}
