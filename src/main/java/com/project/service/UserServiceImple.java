package com.project.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDAO;
import com.project.domain.LoginUser;
import com.project.domain.UserVO;

@Service
public class UserServiceImple implements UserService {
	
	@Autowired
	private UserDAO dao;
	
	//이름으로 객체 주입
	@Resource(name = "sessionUser")
	private LoginUser sessionUser;
	
	//회원가입
	@Override
	public void regUser(UserVO vo) throws Exception {
		dao.regUser(vo);
	}
	//로그인
	@Override
	public boolean login(UserVO vo) throws Exception {
		dao.login(vo);
		return true;
	}
	
	@Override
	public void getLoginUserInfo(LoginUser loginUser) {
		//DB에서 로그인 유저정보를 가져옴(id, pw 입력하여)
		LoginUser tempUser = dao.getLoginUserInfo(loginUser);
		//로그인 유저 정보가 있으면 그 정보를 세션유저에 인덕스번호와 이름을 저장하고 상태를 true으로 저장
		if(tempUser != null) {
			sessionUser.setUserno(tempUser.getUserno());
			sessionUser.setName(tempUser.getName());
			sessionUser.setUserLogin(true); //로그인 성공
		}
		
	}

}
