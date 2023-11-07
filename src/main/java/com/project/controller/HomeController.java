package com.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.domain.BoardVO;
import com.project.domain.InfoVO;
import com.project.service.BoardService;
import com.project.service.InfoService;

@Controller
public class HomeController {

	@Autowired
	private BoardService bService;
	
	@Autowired
	private InfoService iService;
	
	@GetMapping("/")
	public String home(HttpServletRequest request, Model model,BoardVO pList,InfoVO newInfo) {
		HttpSession session = request.getSession();
		model.addAttribute("userId",session.getAttribute("loginUser"));
		model.addAttribute("pList",bService.getPopularList(pList)); 
		model.addAttribute("newInfo", iService.getInfoNewList(newInfo));
		return "home";
	}
}
