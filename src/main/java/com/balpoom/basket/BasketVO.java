package com.balpoom.basket;
public class BasketVO {
    int c_no; //장바구니번호
    int m_no; // 회원번호
    int p_no; //상품번호
    int c_cnt; //수량
    int validity; // 장바구니의 취소할때 변별을 주기 위해
    

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getC_cnt() {
		return c_cnt;
	}

	public void setC_cnt(int c_cnt) {
		this.c_cnt = c_cnt;
	}

	public int getValidity() {
		return validity;
	}

	public void setValidity(int validity) {
		this.validity = validity;
	}
    
}