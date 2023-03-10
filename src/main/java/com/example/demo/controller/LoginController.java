package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/login")
public class LoginController {

	
	@GetMapping("")
	private ModelAndView login() {
		System.out.println("HIII");
		ModelAndView model = new ModelAndView();
		model.setViewName("/login");
		return model;
	}
}
