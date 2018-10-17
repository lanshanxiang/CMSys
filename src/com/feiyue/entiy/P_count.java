package com.feiyue.entiy;

public class P_count {
     private int p_countMonth;
     private int p_countYear;
     private int p_countAdd;
     private int p_countDel;
     
     
     
	public P_count() {
		super();
	}
	public P_count(int p_countMonth, int p_countYear, int p_countAdd, int p_countDel) {
		super();
		this.p_countMonth = p_countMonth;
		this.p_countYear = p_countYear;
		this.p_countAdd = p_countAdd;
		this.p_countDel = p_countDel;
	}
	public int getp_countMonth() {
		return p_countMonth;
	}
	public void setp_countMonth(int p_countMonth) {
		this.p_countMonth = p_countMonth;
	}
	public int getp_countYear() {
		return p_countYear;
	}
	public void setp_countYear(int p_countYear) {
		this.p_countYear = p_countYear;
	}
	public int getp_countAdd() {
		return p_countAdd;
	}
	public void setp_countAdd(int p_countAdd) {
		this.p_countAdd = p_countAdd;
	}
	public int getp_countDel() {
		return p_countDel;
	}
	public void setp_countDel(int p_countDel) {
		this.p_countDel = p_countDel;
	}
	@Override
	public String toString() {
		return "p_count [p_countMonth=" + p_countMonth + ", p_countYear=" + p_countYear + ", p_countAdd=" + p_countAdd
				+ ", p_countDel=" + p_countDel + "]";
	}
     
     
}
