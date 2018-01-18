package com.balpoom.inquery;

import java.util.Date;




public class InqueryVO {
	
		private int inqu_no;
		private String inqu_title;
		private Date inqu_reg;
		private int inqu_cnt;
		private String inqu_content;
		private String searchCondition;
		private String searchKeyword;
		private int m_no;
		private int p_no;		

		public int getInqu_no() {
			return inqu_no;
		}
		public void setInqu_no(int inqu_no) {
			this.inqu_no = inqu_no;
		}
		public String getInqu_title() {
			return inqu_title;
		}
		public void setInqu_title(String inqu_title) {
			this.inqu_title = inqu_title;
		}
		public Date getInqu_reg() {
			return inqu_reg;
		}
		public void setInqu_reg(Date inqu_reg) {
			this.inqu_reg = inqu_reg;
		}
		public int getInqu_cnt() {
			return inqu_cnt;
		}
		public void setInqu_cnt(int inqu_cnt) {
			this.inqu_cnt = inqu_cnt;
		}
		public String getInqu_content() {
			return inqu_content;
		}
		public void setInqu_content(String inqu_content) {
			this.inqu_content = inqu_content;
		}
		public String getSearchCondition() {
			return searchCondition;
		}
		public void setSearchCondition(String searchCondition) {
			this.searchCondition = searchCondition;
		}
		public String getSearchKeyword() {
			return searchKeyword;
		}
		public void setSearchKeyword(String searchKeyword) {
			this.searchKeyword = searchKeyword;
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
		
		@Override
		public String toString() {
			return "InqueryVO [inqu_no=" + inqu_no + ", inqu_title=" + inqu_title +", m_no=" +
					m_no + ", inqu_content=" + inqu_content + ", inqu_reg=" + inqu_reg +
					", inqu_cnt=" + inqu_cnt + "]";
		}
		
}
