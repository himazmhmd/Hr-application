package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/employees")
public class EmployeeController {

	@GetMapping({"/employee-list"})
	public String EmployeeList() {
		return "employees/employee-list";
	}
	
	@GetMapping({"/removed-employee-list"})
	public String RemovedEmployeeList() {
		return "employees/removed-employee-list";
	}
	
	
}