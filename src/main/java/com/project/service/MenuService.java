package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.MenuDAO;
import com.project.domain.MenuVO;

@Service
public class MenuService {
	
	@Autowired
	private MenuDAO menuDAO;
	
	public  List<MenuVO> getMenuList(){
		return menuDAO.getMenuList();
	}

}
