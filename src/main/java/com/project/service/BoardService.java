package com.project.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.BoardDAO;
import com.project.domain.BoardVO;
import com.project.domain.LoginUser;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	//게시판이름
	public String getBoardName(int board_idx) {
		return dao.getBoardName(board_idx);
	}
	
	//게시글작성
	public void addBoardContent(BoardVO writeContent) {
		
		//글쓴이를 세션로그인에서 가져와서 추가
		writeContent.setWriter_idx(sessionUser.getUserno());
		
		dao.addBoardContent(writeContent);
	}
	
	//게시글 목록
	public List<BoardVO> getContentList(int board_idx){
		return dao.getContentList(board_idx);
	}
	
	//뷰페이지
	public BoardVO viewCotent(int content_idx) {
		return dao.viewCotent(content_idx);
	}
	
	//게시글 조회시 조회수 1증가
	public BoardVO view(int content_idx) {
		dao.viewCnt(content_idx);
		return dao.viewCotent(content_idx);
	}
}
