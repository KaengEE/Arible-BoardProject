package com.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.ReplyVO;

@Repository
public class ReplyDAO {
	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	//댓글작성
	public void addReply(ReplyVO addReply) {
		sqlTemplate.insert("reply.newReply", addReply);
	}
	
	//댓글목록
	public List<ReplyVO> getReplyList(int content_idx){
		return sqlTemplate.selectList("reply.getReply", content_idx);
	}
	
	//댓글삭제
	public void deleteReply(int reply_idx) {
		sqlTemplate.delete("reply.removeReply",reply_idx);
	}
	
	//댓글수정
	public void modifyReply(ReplyVO modifyReply) {
	    sqlTemplate.update("reply.updateReply", modifyReply);
	}
	
	//댓글한개
	public ReplyVO oneReply(int reply_idx) {
		return sqlTemplate.selectOne("reply.oneReply", reply_idx);
	}
}
