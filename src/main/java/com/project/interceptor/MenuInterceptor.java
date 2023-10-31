package com.project.interceptor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.project.domain.LoginUser;
import com.project.domain.MenuVO;
import com.project.service.MenuService;

public class MenuInterceptor implements HandlerInterceptor {
	
	private MenuService menuService;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	//생성자 주입(권장) - 아무것도 안적어도 자동 입력됨
	public MenuInterceptor(MenuService menuService) {
		this.menuService = menuService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 인터셉터는 요청에 먼저 실행되어 리턴이 false가 되면 요청을 취소한다.
		List<MenuVO> topMenuList = menuService.getMenuList();
		
		request.setAttribute("topMenuList", topMenuList);
		request.setAttribute("sessionUser", sessionUser);
		return true;
	}
}
