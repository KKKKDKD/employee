package com.runner.repositery;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.runner.empEntity.Employee;

@Repository
public interface EmpRepository extends JpaRepository<Employee, Integer> {

public	Employee findByEmailIdAndPassword(String emailId, String password);

	
}
