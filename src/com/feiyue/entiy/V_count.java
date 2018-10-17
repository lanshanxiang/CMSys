package com.feiyue.entiy;

public class V_count {
     private int v_countMonth;
     private int v_countYear;
     private int v_countAdd;
     private int v_countDel;
     
     
     
	public V_count() {
		super();
	}
	public V_count(int v_countMonth, int v_countYear, int v_countAdd, int v_countDel) {
		super();
		this.v_countMonth = v_countMonth;
		this.v_countYear = v_countYear;
		this.v_countAdd = v_countAdd;
		this.v_countDel = v_countDel;
	}
	public int getv_countMonth() {
		return v_countMonth;
	}
	public void setv_countMonth(int v_countMonth) {
		this.v_countMonth = v_countMonth;
	}
	public int getv_countYear() {
		return v_countYear;
	}
	public void setv_countYear(int v_countYear) {
		this.v_countYear = v_countYear;
	}
	public int getv_countAdd() {
		return v_countAdd;
	}
	public void setv_countAdd(int v_countAdd) {
		this.v_countAdd = v_countAdd;
	}
	public int getv_countDel() {
		return v_countDel;
	}
	public void setv_countDel(int v_countDel) {
		this.v_countDel = v_countDel;
	}
	@Override
	public String toString() {
		return "v_count [v_countMonth=" + v_countMonth + ", v_countYear=" + v_countYear + ", v_countAdd=" + v_countAdd
				+ ", v_countDel=" + v_countDel + "]";
	}
     
     
}
