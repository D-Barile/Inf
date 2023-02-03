package com.inf.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InfController {
	
	@GetMapping("/home")
	public String getHome() {
		return "index";
	}

}
