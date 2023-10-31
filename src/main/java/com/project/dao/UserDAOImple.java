package com.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.LoginUser;
import com.project.domain.UserVO;

@Repository
public class UserDAOImple implements UserDAO{

	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	//회원가입
	@Override
	public void regUser(UserVO vo) throws Exception {
		sqlTemplate.insert("users.regUser", vo);
	}

	//로그인
	@Override
	public void login(UserVO vo) throws Exception {
		sqlTemplate.selectOne("users.login", vo);
	}

	@Override
	public LoginUser getLoginUserInfo(LoginUser loginUser) {
		return sqlTemplate.selectOne("users.login", loginUser);
	}

	@Override
	public UserVO getModifyUserInfo(int userno) {
		return sqlTemplate.selectOne("users.userInfo",userno);

	}

	@Override
	public void ModifyUserInfo(UserVO modifyUser) {
		sqlTemplate.update("users.updateUser",modifyUser);
		
	}

}
