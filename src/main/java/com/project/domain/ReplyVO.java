package com.project.domain;

public class ReplyVO {
	
	/*
	CREATE TABLE `minipj`.`reply` (
	  `reply_idx` INT NOT NULL AUTO_INCREMENT,
	  `reply` VARCHAR(45) NULL,
	  `reply_writer_idx` VARCHAR(45) NULL,
	  `board_idx` INT NOT NULL,
	  `reply_regDate` DATETIME NULL DEFAULT now(),
	  PRIMARY KEY (`reply_idx`));
	 */
	
	private int reply_idx;
	private String reply;
	private int reply_writer_idx;
	private int content_idx;
	private String reply_regDate;
	private String name;
	private int board_idx;
	
	
	public int getContent_idx() {
		return content_idx;
	}
	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getReply_idx() {
		return reply_idx;
	}
	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public int getReply_writer_idx() {
		return reply_writer_idx;
	}
	public void setReply_writer_idx(int reply_writer_idx) {
		this.reply_writer_idx = reply_writer_idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public String getReply_regDate() {
		return reply_regDate;
	}
	public void setReply_regDate(String reply_regDate) {
		this.reply_regDate = reply_regDate;
	}
	
	
	
}
