package com.feiyue.entiy;



public class RepairBean {
	private int repairId;
	private int reportId; 
	private String injureReason;// 损坏原因
	private String repairUnit; // 维修单位
	private String repairTime; // 维修时间
	private String prid; // 是否付款
	private double payment; // 付款数
	private String extent;
	private String equipment;
	private String reportName;
	private int isReport;
	
	public RepairBean(int reportId, String injureReason, String repairUnit, String repairTime,
			String prid, double payment, String extent,int repairId) {
		super();
		this.repairId = repairId;
		this.reportId = reportId;
		this.injureReason = injureReason;
		this.repairUnit = repairUnit;
		this.repairTime = repairTime;
		this.prid = prid;
		this.payment = payment;
		this.extent = extent;
	}
	
	public RepairBean(int reportId, String injureReason, String repairUnit, String repairTime,
			String prid, double payment, String extent) {
		super();
		this.reportId = reportId;
		this.injureReason = injureReason;
		this.repairUnit = repairUnit;
		this.repairTime = repairTime;
		this.prid = prid;
		this.payment = payment;
		this.extent = extent;
	}
	
	public RepairBean() {
		super();
	}
	public RepairBean(int repairId, int reportId, String injureReason, String repairUnit, String repairTime,
			String prid, double payment, String extent) {
		super();
		this.repairId = repairId;
		this.reportId = reportId;
		this.injureReason = injureReason;
		this.repairUnit = repairUnit;
		this.repairTime = repairTime;
		this.prid = prid;
		this.payment = payment;
		this.extent = extent;
	}
	
	
	
	public int getIsReport() {
		return isReport;
	}

	public void setIsReport(int isReport) {
		this.isReport = isReport;
	}

	public String getEquipment() {
		return equipment;
	}

	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}

	public String getReportName() {
		return reportName;
	}

	public void setReportName(String reportName) {
		this.reportName = reportName;
	}

	public int getRepairId() {
		return repairId;
	}
	public void setRepairId(int repairId) {
		this.repairId = repairId;
	}
	public int getReportId() {
		return reportId;
	}
	public void setReportId(int reportId) {
		this.reportId = reportId;
	}
	public String getInjureReason() {
		return injureReason;
	}
	public void setInjureReason(String injureReason) {
		this.injureReason = injureReason;
	}
	public String getRepairUnit() {
		return repairUnit;
	}
	public void setRepairUnit(String repairUnit) {
		this.repairUnit = repairUnit;
	}
	public String getRepairTime() {
		return repairTime;
	}
	public void setRepairTime(String repairTime) {
		this.repairTime = repairTime;
	}
	public String getPrid() {
		return prid;
	}
	public void setPrid(String prid) {
		this.prid = prid;
	}
	public double getPayment() {
		return payment;
	}
	public void setPayment(double payment) {
		this.payment = payment;
	}
	public String getExtent() {
		return extent;
	}
	public void setExtent(String extent) {
		this.extent = extent;
	}
	@Override
	public String toString() {
		return "RepairBean [repairId=" + repairId + ", reportId=" + reportId + ", injureReason=" + injureReason
				+ ", repairUnit=" + repairUnit + ", repairTime=" + repairTime + ", prid=" + prid + ", payment="
				+ payment + ", extent=" + extent + ", equipment=" + equipment + ", reportName=" + reportName
				+ ", isReport=" + isReport + "]";
	}
	

    
	

}
