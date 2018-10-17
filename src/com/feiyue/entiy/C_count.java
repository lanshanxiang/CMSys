package com.feiyue.entiy;

public class C_count {
     private int c_countMonth;
     private int c_countYear;
     private int c_countAdd;
     private int c_countDel;
     
     
     
	public C_count() {
		super();
	}
	public C_count(int c_countMonth, int c_countYear, int c_countAdd, int c_countDel) {
		super();
		this.c_countMonth = c_countMonth;
		this.c_countYear = c_countYear;
		this.c_countAdd = c_countAdd;
		this.c_countDel = c_countDel;
	}
	public int getc_countMonth() {
		return c_countMonth;
	}
	public void setc_countMonth(int c_countMonth) {
		this.c_countMonth = c_countMonth;
	}
	public int getc_countYear() {
		return c_countYear;
	}
	public void setc_countYear(int c_countYear) {
		this.c_countYear = c_countYear;
	}
	public int getc_countAdd() {
		return c_countAdd;
	}
	public void setc_countAdd(int c_countAdd) {
		this.c_countAdd = c_countAdd;
	}
	public int getc_countDel() {
		return c_countDel;
	}
	public void setc_countDel(int c_countDel) {
		this.c_countDel = c_countDel;
	}
	@Override
	public String toString() {
		return "c_count [c_countMonth=" + c_countMonth + ", c_countYear=" + c_countYear + ", c_countAdd=" + c_countAdd
				+ ", c_countDel=" + c_countDel + "]";
	}
     
     
}
