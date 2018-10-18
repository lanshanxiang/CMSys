package com.feiyue.entiy;



/**
 * 
 * 车位信息实体类
 * 
 */


public class ParkingBean {
	private int parkingId;// 车位编号
	private String parkingNo;//车位号
	private int ptId;// 车位类型编号
	private String ptName;//车位类型名称
	private int villageId;// 小区编号
	private String villageName;// 小区名称	
	private int parkSRId;//  出售状态编号
	private String parkSRName;//  状态名称 出售出租
	private double area;//车位面积
	private int tenementId;//租户编号
	//private String tenementName;//住户姓名
	private String timeStart;//租户编号
	private String timeEnd;//租户编号
	private String remarks;// 备注
	
	
	
public int getParkingId() {
		return parkingId;
	}
	public void setParkingId(int parkingId) {
		this.parkingId = parkingId;
	}
	public String getParkingNo() {
		return parkingNo;
	}
	public void setParkingNo(String parkingNo) {
		this.parkingNo = parkingNo;
	}
	public int getPtId() {
		return ptId;
	}
	public void setPtId(int ptId) {
		this.ptId = ptId;
	}
	public String getPtName() {
		return ptName;
	}
	public void setPtName(String ptName) {
		this.ptName = ptName;
	}
	public int getVillageId() {
		return villageId;
	}
	public void setVillageId(int villageId) {
		this.villageId = villageId;
	}
	public String getVillageName() {
		return villageName;
	}
	public void setVillageName(String villageName) {
		this.villageName = villageName;
	}
	public int getParkSRId() {
		return parkSRId;
	}
	public void setParkSRId(int parkSRId) {
		this.parkSRId = parkSRId;
	}
	public String getParkSRName() {
		return parkSRName;
	}
	public void setParkSRName(String parkSRName) {
		this.parkSRName = parkSRName;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	
public int getTenementId() {
		return tenementId;
	}
	public void setTenementId(int tenementId) {
		this.tenementId = tenementId;
	}
	public String getTimeStart() {
		return timeStart;
	}
	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}
	public String getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}
public ParkingBean() {
	// TODO Auto-generated constructor stub
}

/**
 * 带参构造 增加时用
 * @param parkingNo
 * @param ptId
 * @param villageId
 * @param parkSRId
 * @param area
 * @param remarks
 */
public ParkingBean(String parkingNo, int ptId, int villageId, int parkSRId, double area, String remarks) {
	super();
	this.parkingNo = parkingNo;
	this.ptId = ptId;
	this.villageId = villageId;
	this.parkSRId = parkSRId;
	this.area = area;
	this.remarks = remarks;
}
/**
 * 全参构造
 * @param parkingId
 * @param parkingNo
 * @param ptId
 * @param ptName
 * @param villageId
 * @param villageName
 * @param parkSRId
 * @param parkSRName
 * @param area
 * @param remarks
 */
public ParkingBean(int parkingId, String parkingNo, int ptId, String ptName, int villageId, String villageName,
		int parkSRId, String parkSRName, double area, String remarks) {
	super();
	this.parkingId = parkingId;
	this.parkingNo = parkingNo;
	this.ptId = ptId;
	this.ptName = ptName;
	this.villageId = villageId;
	this.villageName = villageName;
	this.parkSRId = parkSRId;
	this.parkSRName = parkSRName;
	this.area = area;
	this.remarks = remarks;
}
/**
 * 带参构造 修改时可用
 * @param parkingId
 * @param parkingNo
 * @param ptId
 * @param villageId
 * @param parkSRId
 * @param area
 * @param remarks
 */
public ParkingBean(int parkingId, String parkingNo, int ptId, int villageId, int parkSRId, double area,
		String remarks) {
	super();
	this.parkingId = parkingId;
	this.parkingNo = parkingNo;
	this.ptId = ptId;
	this.villageId = villageId;
	this.parkSRId = parkSRId;
	this.area = area;
	this.remarks = remarks;
}

@Override
public String toString() {
	return "ParkingBean [parkingId=" + parkingId + ", parkingNo=" + parkingNo + ", ptId=" + ptId + ", ptName=" + ptName
			+ ", villageId=" + villageId + ", villageName=" + villageName + ", parkSRId=" + parkSRId + ", parkSRName="
			+ parkSRName + ", area=" + area + ", tenementId=" + tenementId + ", timeStart=" + timeStart + ", timeEnd="
			+ timeEnd + ", remarks=" + remarks + "]";
}







	

	
}
