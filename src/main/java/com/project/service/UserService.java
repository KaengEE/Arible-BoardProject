package com.project.service;

import com.project.domain.UserVO;

public interface UserService {
	//회원등록
	public void regUser(UserVO vo) throws Exception;
	
	//로그인
	public boolean login(UserVO vo) throws Exception;
}
