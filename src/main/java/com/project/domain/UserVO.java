package com.project.domain;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
	
	@Size(min=2, max=4, message="이름은 2~4자로 입력해주세요")
	@Pattern(regexp = "[가-힣]*", message="한글로 입력해주세요")
	private String name;
	
	@Size(min=4, max=20, message="아이디는 4자 이상 20자 이하 영문숫자")
	@Pattern(regexp = "[a-zA-Z0-9]*", message="영문 또는 숫자로 입력해주세요")
	private String id;
	
	@Size(min=4, max=20, message="비밀번호는 4자 이상 20자 이하 영문숫자")
	@Pattern(regexp = "[a-zA-Z0-9]*", message="영문 또는 숫자로 입력해주세요")
	private String pw;
	
	@Size(min=4, max=20, message="비밀번호는 4자 이상 20자 이하 영문숫자")
	@Pattern(regexp = "[a-zA-Z0-9]*", message="영문 또는 숫자로 입력해주세요")
	private String pw2; //비밀번호 확인
	
	@Pattern(regexp="[a-z0-9]+@[a-z]+\\.[a-z]{2,3}", message="이메일형식으로 입력해주세요")
	private String email;
	
	@NotBlank(message = "블로그 주소를 적어주세요")
	private String blog;
	
	@Size(min=1, max=100, message="1~100 숫자를 입력해주세요")
	@Pattern(regexp="[0-9]*", message="숫자를 입력해주세요")
	private String age;
	
	
	//투스트링
	@Override
	public String toString() {
		return "UserVO [userno=" + userno + ", name=" + name + ", id=" + id + ", pw=" + pw + ", pw2=" + pw2 + ", email="
				+ email + ", blog=" + blog + ", age=" + age + "]";
	}
	//게터세터
	public String getPw2() {
		return pw2;
	}
	public void setPw2(String pw2) {
		this.pw2 = pw2;
	}
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
	public String getBlog() {
		return blog;
	}
	public void setBlog(String blog) {
		this.blog = blog;
	}
	
}
