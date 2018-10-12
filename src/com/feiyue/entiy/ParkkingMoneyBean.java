package com.feiyue.entiy;

/**
 * 车位缴费信息类
 */




public class ParkkingMoneyBean {
	private String parkkingMoneyId;// 收费编号
	private ParkkingBean parkkingModel;// 车位编号
	private String year;// 缴费年份
	private double parkkingMoney;// 车位收费
	private String parkkingMoneyDate;// 收费日期
	private String extent;// 扩展字段


	public String getParkkingMoneyId() {
		return parkkingMoneyId;
	}

	public void setParkkingMoneyId(String parkkingMoneyId) {
		this.parkkingMoneyId = parkkingMoneyId;
	}


	public ParkkingBean getParkkingModel() {
		return parkkingModel;
	}

	public void setParkkingModel(ParkkingBean parkkingModel) {
		this.parkkingModel = parkkingModel;
	}

	public String getYear() {
		return year;
	}

	public double getParkkingMoney() {
		return parkkingMoney;
	}

	public String getExtent() {
		return extent;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public void setParkkingMoney(double parkkingMoney) {
		this.parkkingMoney = parkkingMoney;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	public String getParkkingMoneyDate() {
		return parkkingMoneyDate;
	}

	public void setParkkingMoneyDate(String parkkingMoneyDate) {
		this.parkkingMoneyDate = parkkingMoneyDate;
	}

}
