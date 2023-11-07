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

@Controller
@RequestMapping("/info")
public class InfoController {

	@Autowired
	private InfoService iService;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	//공지사항 삭제
	@GetMapping("/delete")
	public String removeInfo(@RequestParam("info_idx") int info_idx) {
		iService.removeInfo(info_idx); //삭제
		return "redirect: /mypage/info";
		
	}
	
	//공지사항 수정하기전
	@GetMapping("/modify")
	public String modifyInfo(@RequestParam("info_idx") int info_idx, Model model,
							@ModelAttribute("modifyInfo") InfoVO modifyInfo) {
		
		modifyInfo.setInfo_idx(info_idx);
		iService.getInfoContent(modifyInfo); //수정할 데이터
		
		model.addAttribute("modifyInfo", modifyInfo);
		model.addAttribute("info_idx", info_idx); //공지사항 번호전달
		
		return "info/modify";
	}
	
	//공지사항 유효성 검사 및 수정
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyInfo") InfoVO modifyInfo,
			BindingResult result, Model model, @RequestParam("info_idx") int info_idx) {
		
		if(result.hasErrors()) {
			return "info/modify";
		}
		
		iService.modifyInfo(modifyInfo); //DB수정
		model.addAttribute("info_idx", info_idx);
		
		return "info/modify_success";
	}
	
	
	
}
