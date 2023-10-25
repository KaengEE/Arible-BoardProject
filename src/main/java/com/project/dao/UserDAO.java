package com.project.dao;

import com.project.domain.UserVO;

public interface UserDAO {
	//유저등록 - 회원가입
	public void regUser(UserVO vo) throws Exception;
	
	//로그인
	public void login(UserVO vo) throws Exception;
}
