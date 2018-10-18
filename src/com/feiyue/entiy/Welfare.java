package com.feiyue.entiy;

public class Welfare {
     private int welfareId;
     private String welfareTitle;
     private String welfareContent;
     private String welfareDate;
     private String welfareTel;
     
 
     
	public Welfare() {
		super();
	}
	public Welfare(int welfareId, String welfareTitle, String welfareContent, String welfareDate, String welfareTel) {
		super();
		this.welfareId = welfareId;
		this.welfareTitle = welfareTitle;
		this.welfareContent = welfareContent;
		this.welfareDate = welfareDate;
		this.welfareTel = welfareTel;
	}
	public int getWelfareId() {
		return welfareId;
	}
	public void setWelfareId(int welfareId) {
		this.welfareId = welfareId;
	}
	public String getWelfareTitle() {
		return welfareTitle;
	}
	public void setWelfareTitle(String welfareTitle) {
		this.welfareTitle = welfareTitle;
	}
	public String getWelfareContent() {
		return welfareContent;
	}
	public void setWelfareContent(String welfareContent) {
		this.welfareContent = welfareContent;
	}
	public String getWelfareDate() {
		return welfareDate;
	}
	public void setWelfareDate(String welfareDate) {
		this.welfareDate = welfareDate;
	}
	public String getWelfareTel() {
		return welfareTel;
	}
	public void setWelfareTel(String welfareTel) {
		this.welfareTel = welfareTel;
	}
	@Override
	public String toString() {
		return "Welfare [welfareId=" + welfareId + ", welfareTitle=" + welfareTitle + ", welfareContent="
				+ welfareContent + ", welfareDate=" + welfareDate + ", welfareTel=" + welfareTel + "]";
	}
     
     
     
}
