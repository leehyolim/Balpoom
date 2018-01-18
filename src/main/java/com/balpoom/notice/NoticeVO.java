package com.balpoom.notice;

import java.util.Date;

public class NoticeVO {
	private int notice_no;
	private String notice_title;
	private int notice_cnt;
	private Date notice_reg;
	private String notice_content;
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public int getNotice_cnt() {
		return notice_cnt;
	}
	public void setNotice_cnt(int notice_cnt) {
		this.notice_cnt = notice_cnt;
	}
	public Date getNotice_reg() {
		return notice_reg;
	}
	public void setNotice_reg(Date notice_reg) {
		this.notice_reg = notice_reg;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [notice_no=" + notice_no + ", notice_title=" + notice_title + ", notice_cnt=" + notice_cnt
				+ ", notice_reg=" + notice_reg + ", notice_content=" + notice_content + "]";
	}
	
	
}
