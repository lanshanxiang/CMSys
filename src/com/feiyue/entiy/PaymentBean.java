package com.feiyue.entiy;

/**
 * 物业缴费信息类
 * 
 * @author 郭波
 * 
 */

public class PaymentBean {
	private String payId;
	private TenementBean tenementModel;
	private String years;
	private String months;
	private double lastHalf;
	private double thisMonth;
	private CostBean costModel;
	private double quantity;
	private double payable;
	private double practical;
	private String payDate;
	private String extent;


	public String getPayId() {
		return payId;
	}

	public void setPayId(String payId) {
		this.payId = payId;
	}

	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	public String getMonths() {
		return months;
	}

	public void setMonths(String months) {
		this.months = months;
	}

	public double getLastHalf() {
		return lastHalf;
	}

	public void setLastHalf(double lastHalf) {
		this.lastHalf = lastHalf;
	}

	public double getThisMonth() {
		return thisMonth;
	}

	public void setThisMonth(double thisMonth) {
		this.thisMonth = thisMonth;
	}


	public CostBean getCostModel() {
		return costModel;
	}

	public void setCostModel(CostBean costModel) {
		this.costModel = costModel;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public double getPayable() {
		return payable;
	}

	public void setPayable(double payable) {
		this.payable = payable;
	}

	public double getPractical() {
		return practical;
	}

	public void setPractical(double practical) {
		this.practical = practical;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}


	public TenementBean getTenementModel() {
		return tenementModel;
	}

	public void setTenementModel(TenementBean tenementModel) {
		this.tenementModel = tenementModel;
	}
}
