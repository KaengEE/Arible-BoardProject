package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@GetMapping("/main")
	public String board() {
		return "board/main";
	}
	
	@GetMapping("/write")
	public String write() {
		return "board/write";
	}
}
