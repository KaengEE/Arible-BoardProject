package com.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.domain.UserVO;
import com.project.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//로그인화면
	@GetMapping("/login")
	public void getLogin(UserVO vo) throws Exception{
	}
	
	//로그인화면
	@PostMapping("/login")
	public String postLogin(UserVO vo,HttpServletRequest request) throws Exception{
		userService.login(vo);
		//로그인정보 세션에 저장
		HttpSession session = request.getSession();

		if(userService.login(vo)) {
			session.setAttribute("loginUser", vo.getId()); //세션에 저장
			return "redirect:/"; //성공시 홈화면
		}
		return "users/login"; //실패시 로그인화면
		
	}
	
	//가입화면
	@GetMapping("/join")
	public void getJoin(UserVO vo) throws Exception{
	}
	
	//회원가입
	@PostMapping("/join")
	public String postJoin(UserVO vo) throws Exception{
		userService.regUser(vo); //회원정보 저장
		return "users/login"; //로그인 화면으로
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout() throws Exception{
		return "users/logout";
	}
}
