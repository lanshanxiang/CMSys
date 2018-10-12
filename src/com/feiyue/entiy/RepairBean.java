package com.feiyue.entiy;



public class RepairBean {
	private String repairId;
	private String equipment; // 设备名称
	private TenementBean tenementModel;
	private String injureReason;// 损坏原因
	private String repairUnit; // 维修单位
	private String repairTime; // 维修时间
	private String prid; // 是否付款

	private double payment; // 付款数
	private String isRepair; // 是否受理
	private String extent;
	


	public String getRepairId() {
		return repairId;
	}

	public void setRepairId(String repairId) {
		this.repairId = repairId;
	}

	public String getEquipment() {
		return equipment;
	}

	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}


	public TenementBean getTenementModel() {
		return tenementModel;
	}

	public void setTenementModel(TenementBean tenementModel) {
		this.tenementModel = tenementModel;
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

	public String getIsRepair() {
		return isRepair;
	}

	public void setIsRepair(String isRepair) {
		this.isRepair = isRepair;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

}
