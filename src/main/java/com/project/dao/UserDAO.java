package com.project.dao;

import com.project.domain.LoginUser;
import com.project.domain.UserVO;

public interface UserDAO {
	//유저등록 - 회원가입
	public void regUser(UserVO vo) throws Exception;
	
	//로그인
	public void login(UserVO vo) throws Exception;

	//유저검사
	public LoginUser getLoginUserInfo(LoginUser loginUser);
	
	//유저정보 가져오기
	public UserVO getModifyUserInfo(int user_idx);
	
	//유저 수정
	public void ModifyUserInfo(UserVO modifyUser);
}
