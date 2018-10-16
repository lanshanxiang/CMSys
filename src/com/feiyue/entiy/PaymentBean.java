package com.feiyue.entiy;

/**
 * 物业缴费信息类
 * 
 * @author 
 * 
 */

public class PaymentBean {
	//缴费编号
	private int payId;
	//物业编号
	private int tenementId;
	//年
	private String years;
	//月
	private String months;
	//上月度数
	private double lastHalf;
	//本月度数
	private double thisMonth;
	//费用编号
	private int costId;
	//走表数
	private double quantity;
	//应缴费
	private double payable;
	//实缴费
	private double practical;
	//缴费日期
	private String payDate;
	//扩展字段
	private String extent;
	//户主名称
	private String tenementName;
	//费用类型名称
	private String costName;
	
	public int getPayId() {
		return payId;
	}
	public void setPayId(int payId) {
		this.payId = payId;
	}
	
	public int getTenementId() {
		return tenementId;
	}
	public void setTenementId(int tenementId) {
		this.tenementId = tenementId;
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
	public int getCostId() {
		return costId;
	}
	public void setCostId(int costId) {
		this.costId = costId;
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
	
	public String getTenementName() {
		return tenementName;
	}
	public void setTenementName(String tenementName) {
		this.tenementName = tenementName;
	}
	public String getCostName() {
		return costName;
	}
	public void setCostName(String costName) {
		this.costName = costName;
	}
	public PaymentBean() {
		super();
	}
	/**
	 * 带payId的  不含tenementName costName 
	 * @param payId
	 * @param tenementModel
	 * @param years
	 * @param months
	 * @param lastHalf
	 * @param thisMonth
	 * @param costId
	 * @param quantity
	 * @param payable
	 * @param practical
	 * @param payDate
	 * @param extent
	 */
	
	
	
	public PaymentBean(int payId, int tenementId, String years, String months, double lastHalf, double thisMonth,
			int costId, double quantity, double payable, double practical, String payDate, String extent) {
		super();
		this.payId = payId;
		this.tenementId = tenementId;
		this.years = years;
		this.months = months;
		this.lastHalf = lastHalf;
		this.thisMonth = thisMonth;
		this.costId = costId;
		this.quantity = quantity;
		this.payable = payable;
		this.practical = practical;
		this.payDate = payDate;
		this.extent = extent;
	}
	/**
	 * 不带payId的  不含tenementName costName 
	 * @param tenementModel
	 * @param years
	 * @param months
	 * @param lastHalf
	 * @param thisMonth
	 * @param costId
	 * @param quantity
	 * @param payable
	 * @param practical
	 * @param payDate
	 * @param extent
	 */
	public PaymentBean(int tenementId, String years, String months, double lastHalf, double thisMonth, int costId,
			double quantity, double payable, double practical, String payDate, String extent) {
		super();
		this.tenementId = tenementId;
		this.years = years;
		this.months = months;
		this.lastHalf = lastHalf;
		this.thisMonth = thisMonth;
		this.costId = costId;
		this.quantity = quantity;
		this.payable = payable;
		this.practical = practical;
		this.payDate = payDate;
		this.extent = extent;
	}
	/**
	 *  带ID的 含tenementName costName 
	 * @param payId
	 * @param tenementName
	 * @param years
	 * @param months
	 * @param lastHalf
	 * @param thisMonth
	 * @param costName
	 * @param quantity
	 * @param payable
	 * @param practical
	 * @param payDate
	 * @param extent
	 */
	public PaymentBean(int payId, String tenementName, String years, String months, double lastHalf, double thisMonth,
			String costName, double quantity, double payable, double practical, String payDate, String extent) {
		super();
		this.payId = payId;
		this.tenementName = tenementName;
		this.years = years;
		this.months = months;
		this.lastHalf = lastHalf;
		this.thisMonth = thisMonth;
		this.costName = costName;
		this.quantity = quantity;
		this.payable = payable;
		this.practical = practical;
		this.payDate = payDate;
		this.extent = extent;
	}
	/**
	 * 不带ID的 含tenementName costName 
	 * @param tenementName
	 * @param years
	 * @param months
	 * @param lastHalf
	 * @param thisMonth
	 * @param costName
	 * @param quantity
	 * @param payable
	 * @param practical
	 * @param payDate
	 * @param extent
	 */
	public PaymentBean(String tenementName, String years, String months, double lastHalf, double thisMonth,
			String costName, double quantity, double payable, double practical, String payDate, String extent) {
		super();
		this.tenementName = tenementName;
		this.years = years;
		this.months = months;
		this.lastHalf = lastHalf;
		this.thisMonth = thisMonth;
		this.costName = costName;
		this.quantity = quantity;
		this.payable = payable;
		this.practical = practical;
		this.payDate = payDate;
		this.extent = extent;
	}
	@Override
	public String toString() {
		return "PaymentBean [payId=" + payId + ", tenementId=" + tenementId + ", years=" + years + ", months=" + months
				+ ", lastHalf=" + lastHalf + ", thisMonth=" + thisMonth + ", costId=" + costId + ", quantity="
				+ quantity + ", payable=" + payable + ", practical=" + practical + ", payDate=" + payDate + ", extent="
				+ extent + ", tenementName=" + tenementName + ", costName=" + costName + "]";
	}
	
	
	
	
	

	
	
	
	
}
