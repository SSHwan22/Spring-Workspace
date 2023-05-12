package com.kh.chap09.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Chap09Controller {

	@GetMapping("/hello")
	public String config(String name, Model model) {
		
		model.addAttribute("name", name);
		return "hello";
	}
}
