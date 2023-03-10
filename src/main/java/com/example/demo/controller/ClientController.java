package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/client")
public class ClientController {

	@GetMapping({"/client-list"})
	public String ClientList() {
		return "client/client-list";
	}
	
	@GetMapping({"/removed-client-list"})
	public String RemovedClientList() {
		return "client/removed-client-list";
	}
	
	
}