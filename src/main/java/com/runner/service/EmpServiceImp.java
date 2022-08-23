package com.runner.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.runner.empDTO.EmployeeDTO;
import com.runner.empEntity.Employee;
import com.runner.repositery.EmpRepository;


@Service
public class EmpServiceImp implements EmpSevice{
	 @Autowired
	EmpRepository empRepository;
	

	@Override
	public String saveEmployee(EmployeeDTO employeeDTO) {
		Employee employee=new Employee();
		
		//it helps  as convet dto to entity attribut 
		employee.setEmployeeName(employeeDTO.getEmployeeNames());
		BeanUtils.copyProperties(employeeDTO, employee);
		empRepository.save(employee);//insert the entity in db->if we don't pass  primary key -INSERT
		return "employeeDTO";
	}


	@Override
	public List<EmployeeDTO> getAllEmployee() {
		List<EmployeeDTO> listEmployeeDTO = new ArrayList<EmployeeDTO>();
		List<Employee> employeEntity =(List<Employee>) empRepository.findAll(); //find all means getting everything
		
		for (Employee listDao : employeEntity) {
			EmployeeDTO listDto=new EmployeeDTO();
			BeanUtils.copyProperties(listDao, listDto);
			listEmployeeDTO.add(listDto);
		}

		return listEmployeeDTO;
	}


	@Override
	public EmployeeDTO authenticateEmp(String emailId, String password) {
	Employee employeeEntity =empRepository.findByEmailIdAndPassword(emailId,password);
		System.out.println(employeeEntity);
		EmployeeDTO employeeDTO=new EmployeeDTO();
		BeanUtils.copyProperties(employeeEntity, employeeDTO);
		return employeeDTO;
	}


	@Override
	public void authenticateEmp(int employeeId) {
		empRepository.deleteById(employeeId);
		
	}


	@Override
	public EmployeeDTO getIdEmployee(int employeeId) {
	Employee employeeEntity=new Employee();
	EmployeeDTO empDTO=new EmployeeDTO();
	Optional<Employee>  getEmpID=empRepository.findById(employeeId);
	BeanUtils.copyProperties(getEmpID, empDTO);
		return empDTO;
	}

}



