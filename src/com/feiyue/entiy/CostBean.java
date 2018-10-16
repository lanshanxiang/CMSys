package com.feiyue.entiy;



/**
 * 物业费用信息类
 * 
 * @author 郭波
 * 
 */

public class CostBean {
	private int costId;// 费用编号
	private String costName;// 费用名称
	private double unitPrice;// 费用单价
	private String remarks;// 费用说明
	private int ctId;// 费用类型编号
	private String munit;// 计价单位
	private String extent;// 扩展字段
	private String ctName;// 费用类型名称

	
	

	public int getCostId() {
		return costId;
	}



	public void setCostId(int costId) {
		this.costId = costId;
	}



	public String getCostName() {
		return costName;
	}



	public void setCostName(String costName) {
		this.costName = costName;
	}



	public double getUnitPrice() {
		return unitPrice;
	}



	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}



	public String getRemarks() {
		return remarks;
	}



	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}



	public int getCtId() {
		return ctId;
	}



	public void setCtId(int ctId) {
		this.ctId = ctId;
	}



	public String getMunit() {
		return munit;
	}



	public void setMunit(String munit) {
		this.munit = munit;
	}



	public String getExtent() {
		return extent;
	}



	public void setExtent(String extent) {
		this.extent = extent;
	}






	public String getCtName() {
		return ctName;
	}



	public void setCtName(String ctName) {
		this.ctName = ctName;
	}



	public CostBean() {
		super();
	}

	

	public CostBean(String costName, double unitPrice, String remarks, int ctId, String munit, String extent) {
		super();
		this.costName = costName;
		this.unitPrice = unitPrice;
		this.remarks = remarks;
		this.ctId = ctId;
		this.munit = munit;
		this.extent = extent;
	}

	/**
	 * 带ID的 含ctId
	 * @param costId
	 * @param costName
	 * @param unitPrice
	 * @param remarks
	 * @param ctId
	 * @param munit
	 * @param extent
	 */
	
	public CostBean(int costId, String costName, double unitPrice, String remarks, int ctId, String munit,
			String extent) {
		super();
		this.costId = costId;
		this.costName = costName;
		this.unitPrice = unitPrice;
		this.remarks = remarks;
		this.ctId = ctId;
		this.munit = munit;
		this.extent = extent;
	}

	public CostBean(String costName, double unitPrice, String remarks, String ctName, String munit, String extent) {
		super();
		this.costName = costName;
		this.unitPrice = unitPrice;
		this.remarks = remarks;
		this.ctName = ctName;
		this.munit = munit;
		this.extent = extent;
	}

	/**
	 * 带ID的 含ctName
	 * @param costId
	 * @param costName
	 * @param unitPrice
	 * @param remarks
	 * @param ctName
	 * @param munit
	 * @param extent
	 */
	public CostBean(int costId, String costName, double unitPrice, String remarks, String ctName, String munit,
			String extent) {
		super();
		this.costId = costId;
		this.costName = costName;
		this.unitPrice = unitPrice;
		this.remarks = remarks;
		this.ctName = ctName;
		this.munit = munit;
		this.extent = extent;
	}



	@Override
	public String toString() {
		return "CostBean [costId=" + costId + ", costName=" + costName + ", unitPrice=" + unitPrice + ", remarks="
				+ remarks + ", ctId=" + ctId + ", munit=" + munit + ", extent=" + extent + ", ctName=" + ctName + "]";
	}

	
	
	
	
}
