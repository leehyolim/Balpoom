package com.balpoom.cart;

public class BasketVO {
	private int c_no;
	private int m_no;
	private int p_no;
	private int c_cnt;
	private int c_total;
	
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
	public int getC_total() {
		return c_total;
	}
	public void setC_total(int c_total) {
		this.c_total = c_total;
	}
	
	@Override
	public String toString() {
		return "BasketVO [c_no="+c_no+
						", m_no= "+m_no+
						", p_no = "+p_no+
						", c_cnt = "+c_cnt+
						", c_total = "+c_total+"]";
	}
    
}