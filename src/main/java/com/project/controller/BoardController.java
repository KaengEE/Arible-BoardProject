package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService bService;
	
	@GetMapping("/main")
	public String board(@RequestParam("board_idx") int board_idx, Model model) {
		model.addAttribute("board_idx",board_idx);
		model.addAttribute("boardName", bService.getBoardName(board_idx));
		return "board/main";
	}
	
	@GetMapping("/write")
	public String write() {
		return "board/write";
	}
}
