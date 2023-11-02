package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.BoardDAO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	public String getBoardName(int board_idx) {
		return dao.getBoardName(board_idx);
	}
}
