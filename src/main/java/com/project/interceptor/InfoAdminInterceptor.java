package com.project.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.project.domain.LoginUser;

public class InfoAdminInterceptor implements HandlerInterceptor{

	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		int adminId = 3; // 관리자 아이디를 지정
		
		if(sessionUser.getUserno() != adminId) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/mypage/info");
			return false; //요청한 주소를 취소
		}
		
		return true;
	}
}
