package com.balpoom.product;

import java.util.Date;

public class OverallProductVO {
	
	private String p_name;
	private int p_price;
	private String s_busi_name;
	private String p_type;
	private String p_type_detail;
	private String p_common_name;
	private Date r_reg;
	
	private String modify_date;
	
	private int s1;
	private int s2;
	private int s3;
	private int s4;
	private int s5;
	
	
	
	public String getModify_date() {
		return modify_date;
	}
	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}
	public String getP_common_name() {
		return p_common_name;
	}
	public void setP_common_name(String p_common_name) {
		this.p_common_name = p_common_name;
	}
	public Date getR_reg() {
		return r_reg;
	}
	public void setR_reg(Date r_reg) {
		this.r_reg = r_reg;
	}
	public int getS1() {
		return s1;
	}
	public void setS1(int s1) {
		this.s1 = s1;
	}
	public int getS2() {
		return s2;
	}
	public void setS2(int s2) {
		this.s2 = s2;
	}
	public int getS3() {
		return s3;
	}
	public void setS3(int s3) {
		this.s3 = s3;
	}
	public int getS4() {
		return s4;
	}
	public void setS4(int s4) {
		this.s4 = s4;
	}
	public int getS5() {
		return s5;
	}
	public void setS5(int s5) {
		this.s5 = s5;
	}
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
				+ ", p_type=" + p_type + ", p_type_detail=" + p_type_detail + ", p_common_name=" + p_common_name
				+ ", r_reg=" + r_reg + ", modify_date=" + modify_date + ", s1=" + s1 + ", s2=" + s2 + ", s3=" + s3
				+ ", s4=" + s4 + ", s5=" + s5 + "]";
	}



	
	

}
