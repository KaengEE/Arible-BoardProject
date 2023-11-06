package com.project.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.domain.LoginUser;
import com.project.service.InfoService;

@Controller
@RequestMapping("/info")
public class InfoController {

	@Autowired
	private InfoService iService;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	
}
