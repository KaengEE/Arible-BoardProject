package com.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.QnaVO;

@Repository
public class QnaDAO {
	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	public List<QnaVO> qnaList() {
		return sqlTemplate.selectList("mypage.qna");
	}
}
