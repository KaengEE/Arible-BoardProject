package com.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.MenuVO;

@Repository
public class MenuDAO {

	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	public List<MenuVO> getMenuList(){
		return sqlTemplate.selectList("menu.menuList");
	}
	
	public MenuVO getMenu(int board_idx) {
		return sqlTemplate.selectOne("menu.getMenu", board_idx);
	}
	
}
