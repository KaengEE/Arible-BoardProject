package com.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		model.addAttribute("userId",session.getAttribute("loginUser"));
		return "home";
	}
}
