package com.balpoom.product;

public class RegisterVO {

	private String r_reg;
	private int r_no;
	private String p_common_name;

	public String getR_reg() {
		return r_reg;
	}

	public void setR_reg(String r_reg) {
		this.r_reg = r_reg;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	
	public String getP_common_name() {
		return p_common_name;
	}

	public void setP_common_name(String p_common_name) {
		this.p_common_name = p_common_name;
	}



	@Override
	public String toString() {
		return "RegisterVO [r_reg=" + r_reg + ", r_no=" + r_no + ", p_common_name=" + p_common_name + "]";
	}

	public RegisterVO(String r_reg, String p_common_name) {
		super();
		this.r_reg = r_reg;
		this.p_common_name = p_common_name;
	}
	public RegisterVO() {
		// TODO Auto-generated constructor stub
	}


}
