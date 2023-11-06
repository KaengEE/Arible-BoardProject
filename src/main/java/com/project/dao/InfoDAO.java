package com.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.InfoVO;

@Repository
public class InfoDAO {

	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	//공지사항 목록
	public List<InfoVO> getInfoList(InfoVO vo) {
		return sqlTemplate.selectList("info.getInfo",vo);
	}
	
	//공지사항 작성
	public void addInfo(InfoVO writerInfo) {
		sqlTemplate.insert("info.writerInfo",writerInfo);
	}
	
	//공지사항 뷰
	public InfoVO getInfo(int info_idx) {
		return sqlTemplate.selectOne("info.getInfoDetail", info_idx);
	}
}
