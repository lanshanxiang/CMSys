package com.feiyue.entiy;

public class PayNoticeBean {
	private String tenementName;// 住户姓名
	private String mobilePhone;// 手机号
	private String years;// 年
	private String months;// 月
	private String totalPay;// 总费用

	public String getTenementName() {
		return tenementName;
	}

	public void setTenementName(String tenementName) {
		this.tenementName = tenementName;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
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

	public String getTotalPay() {
		return totalPay;
	}

	public void setTotalPay(String totalPay) {
		this.totalPay = totalPay;
	}

	public PayNoticeBean() {
		super();
	}

	public PayNoticeBean(String tenementName, String mobilePhone, String years, String months, String totalPay) {
		super();
		this.tenementName = tenementName;
		this.mobilePhone = mobilePhone;
		this.years = years;
		this.months = months;
		this.totalPay = totalPay;
	}

	@Override
	public String toString() {
		return "PayNoticeBean [tenementName=" + tenementName + ", mobilePhone=" + mobilePhone + ", years=" + years
				+ ", months=" + months + ", totalPay=" + totalPay + "]";
	}

}
