package com.feiyue.entiy;

public class T_count {
     private int t_countMonth;
     private int t_countYear;
     private int t_countAdd;
     private int t_countDel;
     
     
     
	public T_count() {
		super();
	}
	public T_count(int t_countMonth, int t_countYear, int t_countAdd, int t_countDel) {
		super();
		this.t_countMonth = t_countMonth;
		this.t_countYear = t_countYear;
		this.t_countAdd = t_countAdd;
		this.t_countDel = t_countDel;
	}
	public int gett_countMonth() {
		return t_countMonth;
	}
	public void sett_countMonth(int t_countMonth) {
		this.t_countMonth = t_countMonth;
	}
	public int gett_countYear() {
		return t_countYear;
	}
	public void sett_countYear(int t_countYear) {
		this.t_countYear = t_countYear;
	}
	public int gett_countAdd() {
		return t_countAdd;
	}
	public void sett_countAdd(int t_countAdd) {
		this.t_countAdd = t_countAdd;
	}
	public int gett_countDel() {
		return t_countDel;
	}
	public void sett_countDel(int t_countDel) {
		this.t_countDel = t_countDel;
	}
	@Override
	public String toString() {
		return "t_count [t_countMonth=" + t_countMonth + ", t_countYear=" + t_countYear + ", t_countAdd=" + t_countAdd
				+ ", t_countDel=" + t_countDel + "]";
	}
     
     
}
