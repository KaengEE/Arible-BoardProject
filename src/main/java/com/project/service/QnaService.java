package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.QnaDAO;
import com.project.domain.QnaVO;

@Service
public class QnaService {

	@Autowired
	private QnaDAO dao;
	
	public List<QnaVO> qnaList(){
		return dao.qnaList();
	}
}
