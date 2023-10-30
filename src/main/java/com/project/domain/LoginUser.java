package com.project.domain;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

//sessionUser 객체를 세션에 등록
@Component("sessionUser")
@SessionScope
public class LoginUser {
	
	private int userno;
	private String name;
	
	@Size(min=4, max=20, message = "아이디는 4-20까지 적어주세요")
	@Pattern(regexp = "[a-zA-Z0-9]*", message = "영문 또는 숫자로 적어주세요")
	private String id;
	
	@Size(min=4, max=20, message="비밀번호는 4-20까지 적어주세요")
	@Pattern(regexp = "[a-zA-Z0-9]*", message="영문 또는 숫자로 적어주세요")
	private String pw;

	private boolean userLogin; //로그인 상태(로그인시 체크)
	
	public LoginUser() {
		this.userLogin = false; //객체 생성시 로그인 상태는 false
	}

	//게터세터
	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
}
