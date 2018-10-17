package com.feiyue.entiy;

public class B_count {
     private int b_countMonth;
     private int b_countYear;
     private int b_countAdd;
     private int b_countDel;
     
     
     
	public B_count() {
		super();
	}
	public B_count(int b_countMonth, int b_countYear, int b_countAdd, int b_countDel) {
		super();
		this.b_countMonth = b_countMonth;
		this.b_countYear = b_countYear;
		this.b_countAdd = b_countAdd;
		this.b_countDel = b_countDel;
	}
	public int getB_countMonth() {
		return b_countMonth;
	}
	public void setB_countMonth(int b_countMonth) {
		this.b_countMonth = b_countMonth;
	}
	public int getB_countYear() {
		return b_countYear;
	}
	public void setB_countYear(int b_countYear) {
		this.b_countYear = b_countYear;
	}
	public int getB_countAdd() {
		return b_countAdd;
	}
	public void setB_countAdd(int b_countAdd) {
		this.b_countAdd = b_countAdd;
	}
	public int getB_countDel() {
		return b_countDel;
	}
	public void setB_countDel(int b_countDel) {
		this.b_countDel = b_countDel;
	}
	@Override
	public String toString() {
		return "B_count [b_countMonth=" + b_countMonth + ", b_countYear=" + b_countYear + ", b_countAdd=" + b_countAdd
				+ ", b_countDel=" + b_countDel + "]";
	}
     
     
}
