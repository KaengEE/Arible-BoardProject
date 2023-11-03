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
	
	//寃뚯떆�뙋�씠由�
	public String getBoardName(int board_idx) {
		return dao.getBoardName(board_idx);
	}
	
	//寃뚯떆湲��옉�꽦
	public void addBoardContent(BoardVO writeContent) {
		
		//湲��벖�씠瑜� �꽭�뀡濡쒓렇�씤�뿉�꽌 媛��졇���꽌 異붽�
		writeContent.setWriter_idx(sessionUser.getUserno());
		
		dao.addBoardContent(writeContent);
	}
	
	//寃뚯떆湲� 紐⑸줉
	public List<BoardVO> getContentList(int board_idx){
		return dao.getContentList(board_idx);
	}
	
	//酉고럹�씠吏�
	public BoardVO viewCotent(int content_idx) {
		return dao.viewCotent(content_idx);
	}
	
	//寃뚯떆湲� 議고쉶�떆 議고쉶�닔 1利앷�
	public BoardVO view(int content_idx) {
		dao.viewCnt(content_idx);
		return dao.viewCotent(content_idx);
	}
	
	//게시글 수정
	public void modifyContent(BoardVO modifyContent) {
		dao.modifyContent(modifyContent);
	}
	
	//게시글 삭제
	public void deleteContent(int content_idx) {
		dao.deleteContent(content_idx);
	}
	
}
