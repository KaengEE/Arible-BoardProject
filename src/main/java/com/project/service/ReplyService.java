package com.project.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ReplyDAO;
import com.project.domain.LoginUser;
import com.project.domain.ReplyVO;

@Service
public class ReplyService {

	@Autowired
	private ReplyDAO dao;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	//댓글작성
	public void addReply(ReplyVO addReply) {
		//글쓴이를 세션로그인에서 가져와서 추가
		addReply.setReply_writer_idx(sessionUser.getUserno());
		dao.addReply(addReply);
	}
	
	//댓글목록
	public List<ReplyVO> getReplyList(int content_idx){
		return dao.getReplyList(content_idx);
	}
	
	//댓글 삭제
	public void deleteReply(ReplyVO reply_idx) {
		dao.deleteReply(reply_idx);
	}
}
