package com.project.domain;

import javax.validation.constraints.NotBlank;

public class BoardVO {

	@Override
	public String toString() {
		return "BoardVO [content_idx=" + content_idx + ", title=" + title + ", content=" + content + ", writer_idx="
				+ writer_idx + ", name=" + name + ", regDate=" + regDate + ", count=" + count + ", board_idx="
				+ board_idx + ", reply_writer_idx=" + reply_writer_idx + ", keyword=" + keyword + "]";
	}
	private int content_idx;
	
	@NotBlank(message="제목을 입력해주세요")
	private String title;
	@NotBlank(message="내용을 입력해주세요")
	private String content;
	
	private int writer_idx;
	private String name; //작성자 이름
	private String regDate;
	private int count;
	private int board_idx;
	private int reply_writer_idx; //댓글작성자
	
	private String keyword; //검색키워드
	
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getReply_writer_idx() {
		return reply_writer_idx;
	}
	public void setReply_writer_idx(int reply_writer_idx) {
		this.reply_writer_idx = reply_writer_idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	public int getWriter_idx() {
		return writer_idx;
	}
	public void setWriter_idx(int writer_idx) {
		this.writer_idx = writer_idx;
	}
	public int getContent_idx() {
		return content_idx;
	}
	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}


	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
}
