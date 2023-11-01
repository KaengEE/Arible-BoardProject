package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.service.QnaService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private QnaService qService;

	@GetMapping("/info")
	public String info() {
		return "mypage/info";
	}
	
	@GetMapping("/qna")
	public String qna(Model model) {
		model.addAttribute("qnaList", qService.qnaList());
		return "mypage/qna";
	}
}
