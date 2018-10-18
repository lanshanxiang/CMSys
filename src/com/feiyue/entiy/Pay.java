package com.feiyue.entiy;

public class Pay {
     private int pId;
     private String payTime;
     private double payMoney;
     private int costId;
     private int tenementId;
     private String costName;
     private String tenementName;
     
	public Pay() {
		super();
	}


	public Pay(int pId, String payTime, double payMoney, int costId, int tenementId) {
		super();
		this.pId = pId;
		this.payTime = payTime;
		this.payMoney = payMoney;
		this.costId = costId;
		this.tenementId = tenementId;
	}


	public int getpId() {
		return pId;
	}


	public void setpId(int pId) {
		this.pId = pId;
	}


	public String getPayTime() {
		return payTime;
	}


	public void setPayTime(String payTime) {
		this.payTime = payTime;
	}


	public double getPayMoney() {
		return payMoney;
	}


	public void setPayMoney(double payMoney) {
		this.payMoney = payMoney;
	}


	public int getCostId() {
		return costId;
	}


	public void setCostId(int costId) {
		this.costId = costId;
	}


	public int getTenementId() {
		return tenementId;
	}


	public void setTenementId(int tenementId) {
		this.tenementId = tenementId;
	}


	public String getCostName() {
		return costName;
	}


	public void setCostName(String costName) {
		this.costName = costName;
	}


	public String getTenementName() {
		return tenementName;
	}


	public void setTenementName(String tenementName) {
		this.tenementName = tenementName;
	}


	@Override
	public String toString() {
		return "Pay [pId=" + pId + ", payTime=" + payTime + ", payMoney=" + payMoney + ", costId=" + costId
				+ ", tenementId=" + tenementId + ", costName=" + costName + ", tenementName=" + tenementName + "]";
	}
     
     
     
     
}
