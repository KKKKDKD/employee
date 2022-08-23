package com.runner.controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.runner.empDTO.EmployeeDTO;
import com.runner.service.EmpSevice;

@RestController
public class EmpController {
	 @Autowired
	private EmpSevice empSevice;
	
	@GetMapping("/registration")
	public String registration() {
		
		
		
		return "empRegistration";
	}
	
	
	@GetMapping("/getemplist")
 public String getEmployee( Model model) {
		List<EmployeeDTO> listemp =empSevice.getAllEmployee();
		System.out.println(listemp);
		model.addAttribute("empDto",listemp);
		return "showEmployeelist2";	
	}
		
		
	@PostMapping("/registrations")
 public String saveEmployee1(@RequestBody EmployeeDTO employeeDTO, Model model) {
		String listemp=empSevice.saveEmployee(employeeDTO);
		System.out.println(employeeDTO);
		model.addAttribute("empDto",listemp);
		return "Done";	
		}
//	
//  @PostMapping("/registrations")
//public String saveEmployee(@ModelAttribute EmployeeDTO employeeDTO, Model model) {
//	String listemp=empSevice.saveEmployee(employeeDTO);
//	System.out.println(employeeDTO);
//	model.addAttribute("empDto",listemp);
//	return "redirect:/getemplist";	
//	}
	
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}
	
	
	@PostMapping("/authenticate")
	public  String loginemployee(@RequestParam String emailId, @RequestParam String password,Model model) {
		EmployeeDTO employeeDTO=empSevice.authenticateEmp(emailId,password);
		
		model.addAttribute("empDto", employeeDTO);
		
		return "showEmployee";
		
		
	}

	
	@GetMapping("/deleteEmp")
	public String deletEmplyee(@RequestParam  int employeeId) {
		empSevice.authenticateEmp(employeeId);
		
		return "redirect:/getemplist";
	}
	
	@GetMapping("/editEmp")
	
	public String  getEmplyeeid(@RequestParam  int employeeId,Model model) {
		EmployeeDTO employeeDTO=empSevice.getIdEmployee(employeeId);
		model.addAttribute("empDto", employeeDTO);
	return "updateEmplyee";
	}
	
	@PostMapping("/updateEmpData")
	 public String updateEmployee(@ModelAttribute EmployeeDTO employeeDTO, Model model) {
	String rap	=empSevice.saveEmployee(employeeDTO);
	if (rap != null) {
		rap="your application is updated";
     model.addAttribute("empDto", rap);
		
		return "login";
	}else {
		rap="you have to update again";
		model.addAttribute("empDto", rap);
		
		return "updateEmplyee";
	}
	
}}
