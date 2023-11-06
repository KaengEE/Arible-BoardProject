package com.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.domain.BoardVO;
import com.project.service.BoardService;

@Controller
public class HomeController {

	@Autowired
	private BoardService bService;
	
	@GetMapping("/")
	public String home(HttpServletRequest request, Model model,BoardVO pList) {
		HttpSession session = request.getSession();
		model.addAttribute("userId",session.getAttribute("loginUser"));
		model.addAttribute("pList",bService.getPopularList(pList)); 
		return "home";
	}
}
