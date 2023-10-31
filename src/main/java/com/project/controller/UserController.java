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

import com.project.domain.LoginUser;
import com.project.domain.UserVO;
import com.project.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	//로그인화면
	@GetMapping("/login")
	public String login(LoginUser loginUser, Model model,
						@RequestParam(value="fail", defaultValue = "false") boolean fail) { 
		model.addAttribute("fail", fail);
		return "users/login";
	}

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("loginUser") LoginUser loginUser,
							BindingResult result) {
		if(result.hasErrors()) {
			return "users/login";
		}

		//실제 로그인 검사
		userService.getLoginUserInfo(loginUser);
		
		if(sessionUser.isUserLogin()) {
			return "users/login_success";
		} else {
			return "users/login_fail";
		}

	}	
	
	@GetMapping("/not_login")
	public String not_login() {
		return "users/not_login";
	}
	
	//가입화면
	@GetMapping("/join")
	public String getJoin(@ModelAttribute("joinUser") UserVO vo) throws Exception{
		return "users/join";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUser") UserVO joinUser, BindingResult result, Model model) throws Exception {
		
		if(result.hasErrors()) {
			return "users/join";
		}
		if(!joinUser.getPw().equals(joinUser.getPw2())){
			model.addAttribute("msg","비밀번호가 같지 않습니다.");
			return "users/join";
		}
		userService.regUser(joinUser); //회원정보 DB저장
		return "users/join_success";
	}
	
	
	//회원수정화면
	@GetMapping("/setting")
	public String setting(@ModelAttribute("modifyUser") UserVO modifyUser) throws Exception{
		userService.getModifyUserInfo(modifyUser);
		return "users/setting";
	}
	
	//수정
	@PostMapping("setting_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyUser") UserVO modifyUser,
			                 BindingResult result, Model model) {
		if(result.hasErrors()) { //에러발생시
			return "users/setting";
		}
		//DB에 수정된 데이터 저장하기
		userService.modifyUserInfo(modifyUser);
		return "users/modify_success";
	}
	
	//회원탈퇴(삭제)
	
	//로그아웃
	@GetMapping("/logout")
	public String logout() throws Exception{
		sessionUser.setUserLogin(false); //로그아웃
		return "users/logout";
	}
}
