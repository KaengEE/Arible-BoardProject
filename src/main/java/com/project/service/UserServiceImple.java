package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDAO;
import com.project.domain.UserVO;

@Service
public class UserServiceImple implements UserService {
	
	@Autowired
	private UserDAO dao;
	
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

}
