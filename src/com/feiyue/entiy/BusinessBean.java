package com.feiyue.entiy;

public class BusinessBean {
     private int bId;
     private String bName;
     private String bPeopleName;
     private String bTel;
     private int bState;
     private String bDate;
     
	public BusinessBean() {
		super();
	}
	
	public BusinessBean(String bName, String bPeopleName, String bTel) {
		super();
		this.bName = bName;
		this.bPeopleName = bPeopleName;
		this.bTel = bTel;
	}
	
	public BusinessBean(String bName, String bPeopleName, String bTel,String bDate,int bId) {
		super();
		this.bId = bId;
		this.bName = bName;
		this.bPeopleName = bPeopleName;
		this.bTel = bTel;
		this.bState = bState;
		this.bDate = bDate;
	}
	public BusinessBean(String bName, String bPeopleName, String bTel, int bState,String bDate) {
		super();
		this.bName = bName;
		this.bPeopleName = bPeopleName;
		this.bTel = bTel;
		this.bState = bState;
		this.bDate = bDate;
	}
	public BusinessBean(int bId, String bName, String bPeopleName, String bTel,String bDate, int bState) {
		super();
		this.bId = bId;
		this.bName = bName;
		this.bPeopleName = bPeopleName;
		this.bTel = bTel;
		this.bState = bState;
		this.bDate = bDate;
	}
	
	
	
	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbPeopleName() {
		return bPeopleName;
	}
	public void setbPeopleName(String bPeopleName) {
		this.bPeopleName = bPeopleName;
	}
	public String getbTel() {
		return bTel;
	}
	public void setbTel(String bTel) {
		this.bTel = bTel;
	}
	public int getbState() {
		return bState;
	}
	public void setbState(int bState) {
		this.bState = bState;
	}
	@Override
	public String toString() {
		return "BusinessBean [bId=" + bId + ", bName=" + bName + ", bPeopleName=" + bPeopleName + ", bTel=" + bTel
				+ ", bState=" + bState + ", bDate=" + bDate + "]";
	}
     
     
}
