package com.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
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
	
	//게시글 작성
	public void addBoardContent(BoardVO writeContent) {
		sqlTemplate.insert("board.writeContent",writeContent);
	}
	
	//게시글 목록
	public List<BoardVO> getContentList(int board_idx, RowBounds rowBounds) {
		return sqlTemplate.selectList("board.contentList",board_idx, rowBounds);
	}
	
	//게시글 검색
	public List<BoardVO> searchContent(String keyword, int board_idx,RowBounds rowBounds) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("board_idx", board_idx);
		return sqlTemplate.selectList("board.searchContent", map,rowBounds);
	}
	
	//게시글 view
	public BoardVO viewCotent(int content_idx) {
		return sqlTemplate.selectOne("board.viewContent", content_idx);
	}
	
	//조회수 카운트
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
	
	//게시판 별 게시글 총개수
	public int getContentCnt(int info_idx) {
		return sqlTemplate.selectOne("board.contentCnt",info_idx);
	}
	
	//인기글10
	public List<BoardVO> getPopularList(BoardVO pList){
		return sqlTemplate.selectList("board.contentListPopular",pList);
	}
	
	//전체인기글
	public List<BoardVO> getPopular(BoardVO pList, RowBounds rowBounds){
		return sqlTemplate.selectList("board.contentPopular", pList, rowBounds);
	}
	
	//전체글 수
	public int getPopularContentCnt() {
		return sqlTemplate.selectOne("board.allContentCnt");
	}
	
}
