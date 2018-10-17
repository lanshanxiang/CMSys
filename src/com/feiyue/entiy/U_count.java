package com.feiyue.entiy;

public class U_count {
     private int u_countMonth;
     private int u_countYear;
     private int u_countAdd;
     private int u_countDel;
     
     
     
	public U_count() {
		super();
	}
	public U_count(int u_countMonth, int u_countYear, int u_countAdd, int u_countDel) {
		super();
		this.u_countMonth = u_countMonth;
		this.u_countYear = u_countYear;
		this.u_countAdd = u_countAdd;
		this.u_countDel = u_countDel;
	}
	public int getu_countMonth() {
		return u_countMonth;
	}
	public void setu_countMonth(int u_countMonth) {
		this.u_countMonth = u_countMonth;
	}
	public int getu_countYear() {
		return u_countYear;
	}
	public void setu_countYear(int u_countYear) {
		this.u_countYear = u_countYear;
	}
	public int getu_countAdd() {
		return u_countAdd;
	}
	public void setu_countAdd(int u_countAdd) {
		this.u_countAdd = u_countAdd;
	}
	public int getu_countDel() {
		return u_countDel;
	}
	public void setu_countDel(int u_countDel) {
		this.u_countDel = u_countDel;
	}
	@Override
	public String toString() {
		return "u_count [u_countMonth=" + u_countMonth + ", u_countYear=" + u_countYear + ", u_countAdd=" + u_countAdd
				+ ", u_countDel=" + u_countDel + "]";
	}
     
     
}
