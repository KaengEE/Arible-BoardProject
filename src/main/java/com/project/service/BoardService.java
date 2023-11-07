package com.project.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.project.dao.BoardDAO;
import com.project.domain.BoardVO;
import com.project.domain.LoginUser;
import com.project.domain.PageBean;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	//카테고리명
	public String getBoardName(int board_idx) {
		return dao.getBoardName(board_idx);
	}
	
	//게시글 작성
	public void addBoardContent(BoardVO writeContent) {
		
		//세션에있는 유저no 가져오기
		writeContent.setWriter_idx(sessionUser.getUserno());
		
		dao.addBoardContent(writeContent);
	}
	
	//게시글 목록
	public List<BoardVO> getContentList(int board_idx, int page){
		//시작 인덱스 = (페이지번호 - 1) * 10
		int start = (page-1) * page_listcnt;
		//RowBounds(글시작번호, 가져올 개수)
		RowBounds rowBounds = new RowBounds(start,page_listcnt);
		return dao.getContentList(board_idx, rowBounds);
	}
	
	//게시글 검색
	public List<BoardVO> searchContent(String keyword, int board_idx, int page){
		//시작 인덱스 = (페이지번호 - 1) * 10
		int start = (page-1) * page_listcnt;
		//RowBounds(글시작번호, 가져올 개수)
		RowBounds rowBounds = new RowBounds(start,page_listcnt);
		
		return dao.searchContent(keyword,board_idx,rowBounds);
	}
	
	
	//게시판 뷰
	public BoardVO viewCotent(int content_idx) {
		return dao.viewCotent(content_idx);
	}
	
	//조회수
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
	
	//페이지네이션 계산
	public PageBean getContentCnt(int board_idx, int currentPage) {
		
		//게시판별 게시글 개수
		int content_cnt = dao.getContentCnt(board_idx);
		
		PageBean pageBean = new PageBean(content_cnt, currentPage, 
										 page_listcnt, page_paginationcnt);

		return pageBean;
	}
	
	
	//검색 후 페이지네이션 계산
	public PageBean getSearchCnt(int board_idx,String keyword, int currentPage) {
		int content_cnt = dao.getSearchCnt(board_idx, keyword);
		PageBean pageBean = new PageBean(content_cnt, currentPage, 
				 page_listcnt, page_paginationcnt);
		return pageBean;
	}
	
	
	//인기글10
	public List<BoardVO> getPopularList(BoardVO pList){
		return dao.getPopularList(pList);
	}
	
	//전체인기글
	public List<BoardVO> getPopular(BoardVO pList, int page){
		
		//시작 인덱스 = (페이지번호 - 1) * 10
		int start = (page-1) * page_listcnt;
		//RowBounds(글시작번호, 가져올 개수)
		RowBounds rowBounds = new RowBounds(start,page_listcnt);

		return dao.getPopular(pList, rowBounds);
	}
	
	//페이지네이션 계산(전체글)
	public PageBean getPopularCnt(int currentPage) {
		int content_cnt = dao.getPopularContentCnt();
		
		PageBean pageBean = new PageBean(content_cnt, currentPage, 
				 page_listcnt, page_paginationcnt);

		return pageBean;

	}

		
	
}
