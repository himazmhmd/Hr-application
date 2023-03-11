package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/projects")
public class ProjectsController {

	@GetMapping({"/projects-list"})
	public String ProjectsList() {
		return "projects/projects-list";
	}
	
	@GetMapping({"/finished-project-list"})
	public String FinishedProjectsList() {
		return "projects/finished-project-list";
	}
	
	
}