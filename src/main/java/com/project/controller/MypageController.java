package com.project.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.domain.InfoVO;
import com.project.domain.LoginUser;
import com.project.service.InfoService;
import com.project.service.QnaService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private QnaService qService;
	
	@Autowired
	private InfoService iService;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;

	@GetMapping("/info")
	public String infoList(InfoVO vo,Model model) {
		model.addAttribute("list",iService.getInfoList(vo));
		model.addAttribute("info_idx", vo.getInfo_idx()); //공지사항 번호
		return "mypage/info";
	}
	
	@GetMapping("/write")
	public String addInfo(@ModelAttribute("writeInfo") InfoVO writerInfo, Model model) {
		return "mypage/write";
	}
	
	//유효성검사 데이터 저장
	@PostMapping("/write_pro")
	public String addInfo(@Valid @ModelAttribute("writeInfo") InfoVO writerInfo,
			BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "mypage/write";
		}
		//DB저장
		iService.addInfo(writerInfo);
		return "mypage/write_success";
	}
	
	
	@GetMapping("/view")
	public String view(@RequestParam("info_idx") int info_idx, Model model) {
		
		model.addAttribute("info_idx", info_idx);
		model.addAttribute("content", iService.getInfo(info_idx));
		return "mypage/view";
	}
	
	
	@GetMapping("/qna")
	public String qna(Model model) {
		model.addAttribute("qnaList", qService.qnaList());
		return "mypage/qna";
	}
}
