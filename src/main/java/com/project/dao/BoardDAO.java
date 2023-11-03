package com.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.BoardVO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	public String getBoardName(int board_idx) {
		return sqlTemplate.selectOne("board.getBoardName",board_idx);
	}
	
	//게시글추가
	public void addBoardContent(BoardVO writeContent) {
		sqlTemplate.insert("board.writeContent",writeContent);
	}
	
	//게시글 목록
	public List<BoardVO> getContentList(int board_idx) {
		return sqlTemplate.selectList("board.contentList",board_idx);
	}
	
	//게시글 view
	public BoardVO viewCotent(int content_idx) {
		return sqlTemplate.selectOne("board.viewContent", content_idx);
	}
	
	//조회수증가
	public void viewCnt(int content_idx) {
		 sqlTemplate.update("board.viewCnt",content_idx);
	}
}
