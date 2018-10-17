package com.feiyue.entiy;

public class R_count {
     private int r_countYear;
     private int r_countMonth;
     private int r_countAdd;
     private int r_countDel;
     
     
     
     
	public R_count() {
		super();
	}
	public R_count(int r_countYear, int r_countMonth, int r_countAdd, int r_countDel) {
		super();
		this.r_countYear = r_countYear;
		this.r_countMonth = r_countMonth;
		this.r_countAdd = r_countAdd;
		this.r_countDel = r_countDel;
	}
	public int getR_countYear() {
		return r_countYear;
	}
	public void setR_countYear(int r_countYear) {
		this.r_countYear = r_countYear;
	}
	public int getR_countMonth() {
		return r_countMonth;
	}
	public void setR_countMonth(int r_countMonth) {
		this.r_countMonth = r_countMonth;
	}
	public int getR_countAdd() {
		return r_countAdd;
	}
	public void setR_countAdd(int r_countAdd) {
		this.r_countAdd = r_countAdd;
	}
	public int getR_countDel() {
		return r_countDel;
	}
	public void setR_countDel(int r_countDel) {
		this.r_countDel = r_countDel;
	}
	@Override
	public String toString() {
		return "R_count [r_countYear=" + r_countYear + ", r_countMonth=" + r_countMonth + ", r_countAdd=" + r_countAdd
				+ ", r_countDel=" + r_countDel + "]";
	}
     
     
     
     
}
