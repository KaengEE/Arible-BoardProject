package com.project.domain;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class InfoVO {
	
	
	private int info_idx;
	
	@NotBlank(message="제목을 입력해주세요")
	private String info_title;
	
	@NotBlank(message="내용을 입력해주세요")
	private String info_content;
	private int info_writer_idx;
	private String name; //작성자 이름
	
	private String regDate;
	private String info_file; //파일명
	
	private MultipartFile upload_file; //파일업로드
	
	
	
	public String getInfo_file() {
		return info_file;
	}
	public void setInfo_file(String info_file) {
		this.info_file = info_file;
	}
	public MultipartFile getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_content() {
		return info_content;
	}
	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}
	public int getInfo_writer_idx() {
		return info_writer_idx;
	}
	public void setInfo_writer_idx(int info_writer_idx) {
		this.info_writer_idx = info_writer_idx;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}
