package com.balpoom.review;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	
	private int re_no;
	private String re_title;
	private int m_no;
	private String re_content;
	private String m_name;
	private MultipartFile uploadFile;
	private String m_id;
	private String fileName_date;
	private Date re_reg;
	private String reg_date;
	
	
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public Date getRe_reg() {
		return re_reg;
	}
	public void setRe_reg(Date re_reg) {
		this.re_reg = re_reg;
	}
	public String getFileName_date() {
		return fileName_date;
	}
	public void setFileName_date(String fileName_date) {
		this.fileName_date = fileName_date;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public String getRe_title() {
		return re_title;
	}
	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}

	public int getM_no() {
		return m_no;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [re_no=" + re_no + ", re_title=" + re_title + ", m_no=" + m_no + ", re_content=" + re_content + ", reg_date=" + reg_date
				+ ", m_name=" + m_name + ", uploadFile=" + uploadFile +  ", m_id=" + m_id +  ", fileName_date=" + fileName_date + "]";
	}
	
	
	

}