package com.balpoom.member;


public class MemberVO {

	private int m_no;
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_birth;
	private String m_cellphone;
	private String m_phone;
	private String m_address;
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_birth() {
		return m_birth;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_cellphone() {
		return m_cellphone;
	}
	public void setM_cellphone(String m_cellphone) {
		this.m_cellphone = m_cellphone;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	@Override
	public String toString() {
		return "MemberVO [m_no=" + m_no + ", m_id=" + m_id + ", m_password=" + m_password + ", m_name=" + m_name
				+ ", m_birth=" + m_birth + ", m_cellphone=" + m_cellphone + ", m_phone=" + m_phone + ", m_address="
				+ m_address + "]";
	}
	
	
}
