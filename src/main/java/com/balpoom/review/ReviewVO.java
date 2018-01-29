package com.balpoom.review;

public class ReviewVO {
	
	private int re_no;
	private String re_title;
	private int m_no;
	private String re_content;
	private String m_name;
	
	
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
		return "ReviewVO [re_no=" + re_no + ", re_title=" + re_title + ", m_no=" + m_no + ", re_content=" + re_content
				+ ", m_name=" + m_name + "]";
	}
	

}
