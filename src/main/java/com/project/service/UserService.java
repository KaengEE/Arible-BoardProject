package com.project.service;

import com.project.domain.LoginUser;
import com.project.domain.UserVO;

public interface UserService {
	//회원등록
	public void regUser(UserVO vo) throws Exception;
	
	//로그인
	public boolean login(UserVO vo) throws Exception;

	//로그인검사
	public void getLoginUserInfo(LoginUser loginUser);
	
	//로그인정보
	public void getModifyUserInfo(UserVO modifyUser);
	
	//수정
	public void modifyUserInfo(UserVO modifyUser);
	
	//삭제
	public void deleteUser(int userno);
}
