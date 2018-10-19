package com.feiyue.entiy;


public class ReportBean {
	private int reportId;
	private String equipment; // 设备名称
	private int tenementId;
	private String reportName; // 报修人
	private String reportTime; // 维修时间
	private int isReport; // 是否维修
	private String extent;
	private String tenementName;

	
	
	public ReportBean(String equipment, int tenementId, String reportName, String reportTime,
			int isReport, String extent,int reportId) {
		super();
		this.equipment = equipment;
		this.tenementId = tenementId;
		this.reportName = reportName;
		this.reportTime = reportTime;
		this.isReport = isReport;
		this.extent = extent;
		this.reportId = reportId;
	}
	
	public ReportBean(String equipment, int tenementId, String reportName, String extent) {
		super();
		this.equipment = equipment;
		this.tenementId = tenementId;
		this.reportName = reportName;
		this.extent = extent;
	}
	
	public ReportBean(String equipment, int tenementId, String reportName, String reportTime, String extent) {
		super();
		this.equipment = equipment;
		this.tenementId = tenementId;
		this.reportName = reportName;
		this.reportTime = reportTime;
		this.extent = extent;
	}
	
	public ReportBean() {
		super();
	}

	public ReportBean(int reportId, String equipment, int tenementId, String reportName, String reportTime,
			int isReport, String extent, String tenementName) {
		super();
		this.reportId = reportId;
		this.equipment = equipment;
		this.tenementId = tenementId;
		this.reportName = reportName;
		this.reportTime = reportTime;
		this.isReport = isReport;
		this.extent = extent;
		this.tenementName = tenementName;
	}

	public String getTenementName() {
		return tenementName;
	}

	public void setTenementName(String tenementName) {
		this.tenementName = tenementName;
	}

	public int getReportId() {
		return reportId;
	}

	public void setReportId(int reportId) {
		this.reportId = reportId;
	}

	public String getEquipment() {
		return equipment;
	}

	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}


	

	public int getTenementId() {
		return tenementId;
	}

	public void setTenementId(int tenementId) {
		this.tenementId = tenementId;
	}

	public String getReportName() {
		return reportName;
	}

	public void setReportName(String reportName) {
		this.reportName = reportName;
	}

	public String getReportTime() {
		return reportTime;
	}

	public void setReportTime(String reportTime) {
		this.reportTime = reportTime;
	}

	public int getIsReport() {
		return isReport;
	}

	public void setIsReport(int isReport) {
		this.isReport = isReport;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	@Override
	public String toString() {
		return "ReportBean [reportId=" + reportId + ", equipment=" + equipment + ", tenementId=" + tenementId
				+ ", reportName=" + reportName + ", reportTime=" + reportTime + ", isReport=" + isReport + ", extent="
				+ extent + ", tenementName=" + tenementName + "]";
	}
     
	
	
	
}
