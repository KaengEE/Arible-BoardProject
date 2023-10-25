package com.project.domain;

public class UserVO {
	/*
	 CREATE TABLE `minipj`.`users` (
	  `userno` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(45) NOT NULL,
	  `id` VARCHAR(45) NOT NULL,
	  `pw` VARCHAR(45) NOT NULL,
	  `email` VARCHAR(45) NULL,
	  `age` VARCHAR(45) NULL,
	  PRIMARY KEY (`userno`));
	 */
	
	private int userno;
	private String name;
	private String id;
	private String pw;
	private String email;
	private String age;
	
	//게터세터
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
}
