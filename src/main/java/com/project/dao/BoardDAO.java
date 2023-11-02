package com.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	public String getBoardName(int board_idx) {
		return sqlTemplate.selectOne("board.getBoardName",board_idx);
	}
}
