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
	
	//寃뚯떆湲�異붽�
	public void addBoardContent(BoardVO writeContent) {
		sqlTemplate.insert("board.writeContent",writeContent);
	}
	
	//寃뚯떆湲� 紐⑸줉
	public List<BoardVO> getContentList(int board_idx) {
		return sqlTemplate.selectList("board.contentList",board_idx);
	}
	
	//寃뚯떆湲� view
	public BoardVO viewCotent(int content_idx) {
		return sqlTemplate.selectOne("board.viewContent", content_idx);
	}
	
	//議고쉶�닔利앷�
	public void viewCnt(int content_idx) {
		 sqlTemplate.update("board.viewCnt",content_idx);
	}
	
	//게시글수정
	public void modifyContent(BoardVO modifyContent) {
		sqlTemplate.update("board.modifyContent",modifyContent);
	}
	
	//게시글삭제
	public void deleteContent(int content_idx) {
		sqlTemplate.delete("board.deleteContent",content_idx);
	}
	
	
}
