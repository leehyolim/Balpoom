package com.balpoom.product;

public class ProductVO {
	
	private String p_identifier;
	private int r_no;
	private String p_name;
	private String p_type;
	private int p_price;
	private int p_cnt;
	private int p_s1;
	private int p_s2;
	private int p_s3;
	private int p_s4;
	private int p_s5;
	private String p_color;
	private String p_size;
	
	public String getP_identifier() {
		return p_identifier;
	}
	public void setP_identifier(String p_identifier) {
		this.p_identifier = p_identifier;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_cnt() {
		return p_cnt;
	}
	public void setP_cnt(int p_cnt) {
		this.p_cnt = p_cnt;
	}
	public int getP_s1() {
		return p_s1;
	}
	public void setP_s1(int p_s1) {
		this.p_s1 = p_s1;
	}
	public int getP_s2() {
		return p_s2;
	}
	public void setP_s2(int p_s2) {
		this.p_s2 = p_s2;
	}
	public int getP_s3() {
		return p_s3;
	}
	public void setP_s3(int p_s3) {
		this.p_s3 = p_s3;
	}
	public int getP_s4() {
		return p_s4;
	}
	public void setP_s4(int p_s4) {
		this.p_s4 = p_s4;
	}
	public int getP_s5() {
		return p_s5;
	}
	public void setP_s5(int p_s5) {
		this.p_s5 = p_s5;
	}
	public String getP_color() {
		return p_color;
	}
	public void setP_color(String p_color) {
		this.p_color = p_color;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	
	@Override
	public String toString() {
		return "ProductVO [p_identifier=" + p_identifier + ", r_no=" + r_no + ", p_name=" + p_name + ", p_type="
				+ p_type + ", p_price=" + p_price + ", p_cnt=" + p_cnt + ", p_s1=" + p_s1 + ", p_s2=" + p_s2 + ", p_s3="
				+ p_s3 + ", p_s4=" + p_s4 + ", p_s5=" + p_s5 + ", p_color=" + p_color + ", p_size=" + p_size + "]";
	}
	
	
	
}
