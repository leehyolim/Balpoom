package com.balpoom.product;

public class OverallProductVO {
	
	private String p_name;
	private int p_price;
	private String s_busi_name;
	private String p_type;
	private String p_type_detail;
	
	
	public String getP_type_detail() {
		return p_type_detail;
	}
	public void setP_type_detail(String p_type_detail) {
		this.p_type_detail = p_type_detail;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getS_busi_name() {
		return s_busi_name;
	}
	public void setS_busi_name(String s_busi_name) {
		this.s_busi_name = s_busi_name;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	@Override
	public String toString() {
		return "OverallProductVO [p_name=" + p_name + ", p_price=" + p_price + ", s_busi_name=" + s_busi_name
				+ ", p_type=" + p_type + ", p_type_detail=" + p_type_detail + "]";
	}
	
	

}
