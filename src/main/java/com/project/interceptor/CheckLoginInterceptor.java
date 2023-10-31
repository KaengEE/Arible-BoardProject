package com.project.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.project.domain.LoginUser;

public class CheckLoginInterceptor implements HandlerInterceptor {

	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
		
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//로그인 여부 확인
		if(sessionUser.isUserLogin() == false) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/users/not_login");
			return false; //요청한 주소를 취소
		}
		return true; //요청한 페이지로 이동
	}
}
