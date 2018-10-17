package com.feiyue.entiy;

public class S_count {
     private int s_countMonth;
     private int s_countYear;
     private int s_countAdd;
     private int s_countDel;
     
     
     
	public S_count() {
		super();
	}
	public S_count(int s_countMonth, int s_countYear, int s_countAdd, int s_countDel) {
		super();
		this.s_countMonth = s_countMonth;
		this.s_countYear = s_countYear;
		this.s_countAdd = s_countAdd;
		this.s_countDel = s_countDel;
	}
	public int gets_countMonth() {
		return s_countMonth;
	}
	public void sets_countMonth(int s_countMonth) {
		this.s_countMonth = s_countMonth;
	}
	public int gets_countYear() {
		return s_countYear;
	}
	public void sets_countYear(int s_countYear) {
		this.s_countYear = s_countYear;
	}
	public int gets_countAdd() {
		return s_countAdd;
	}
	public void sets_countAdd(int s_countAdd) {
		this.s_countAdd = s_countAdd;
	}
	public int gets_countDel() {
		return s_countDel;
	}
	public void sets_countDel(int s_countDel) {
		this.s_countDel = s_countDel;
	}
	@Override
	public String toString() {
		return "s_count [s_countMonth=" + s_countMonth + ", s_countYear=" + s_countYear + ", s_countAdd=" + s_countAdd
				+ ", s_countDel=" + s_countDel + "]";
	}
     
     
}
