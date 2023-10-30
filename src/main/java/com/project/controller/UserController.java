package com.project.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
	public String login_pro(@Valid @ModelAttribute("loginUser")
							LoginUser loginUser, BindingResult result) {
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
		return "user/not_login";
	}
	
	//가입화면
	@GetMapping("/join")
	public String getJoin(@ModelAttribute("joinUser") UserVO vo, Model model,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail) throws Exception{
		model.addAttribute("fail", fail);
		return "users/join";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUser") UserVO vo, BindingResult result) throws Exception {
		
		if(result.hasErrors()) {
			return "users/login";
		}
		userService.regUser(vo); //회원정보 저장
		return "users/join_success";
	}
	
	
	//회원수정화면
	@GetMapping("/setting")
	public void setting(HttpServletRequest request, Model model) throws Exception{
		HttpSession session = request.getSession();
		model.addAttribute("userId",session.getAttribute("loginUser"));
	}
	
	
	//로그아웃
	@GetMapping("/logout")
	public String logout() throws Exception{
		sessionUser.setUserLogin(false); //로그아웃
		return "users/logout";
	}
}
