package com.feiyue.entiy;



/**
 * 
 * 车位信息
 * 
 */


public class ParkingBean {
	private int parkingId;// 车位编号
	private String parkingNo;//车位号
	private int ptId;// 车位类型编号
	private String ptName;//车位类型名称
	private int roomId;// 住房编号
	private String roomName;// 房间名称
	private String carNum;// 车牌号
	private String carType;// 车类型
	private double money;// 出租、出售的钱
	private String timeStart;// 时间
	private String timeEnd;// 结束时间
	private int parkSRId;//  出售状态编号
	private String parkSRName;//  状态名称 出售出租
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
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
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
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
public ParkingBean() {
	// TODO Auto-generated constructor stub
}
/**
 * 带参构造 增删
 * @param parkingNo
 * @param ptId
 * @param roomId
 * @param carNum
 * @param carType
 * @param money
 * @param timeStart
 * @param timEnd
 * @param parkSRId
 * @param remarks
 */
public ParkingBean( String parkingNo, int ptId, int roomId, String carNum, String carType, double money,
		String timeStart, String timeEnd, int parkSRId, String remarks) {
	super();
	this.parkingNo = parkingNo;
	this.ptId = ptId;
	this.roomId = roomId;
	this.carNum = carNum;
	this.carType = carType;
	this.money = money;
	this.timeStart = timeStart;
	this.timeEnd = timeEnd;
	this.parkSRId = parkSRId;
	this.remarks = remarks;
}
/**
 * 带参构造  显示
 * @param parkkingId
 * @param parkingNo
 * @param ptName
 * @param roomName
 * @param carNum
 * @param carType
 * @param money
 * @param timeStart
 * @param timEnd
 * @param parkSRName
 * @param remarks
 */
public ParkingBean(int parkingId, String parkingNo, String ptName, String roomName, String carNum, String carType,
		double money, String timeStart, String timeEnd, String parkSRName, String remarks) {
	super();
	this.parkingId = parkingId;
	this.parkingNo = parkingNo;
	this.ptName = ptName;
	this.roomName = roomName;
	this.carNum = carNum;
	this.carType = carType;
	this.money = money;
	this.timeStart = timeStart;
	this.timeEnd = timeEnd;
	this.parkSRName = parkSRName;
	this.remarks = remarks;
}
@Override
public String toString() {
	return "ParkingBean [parkingId=" + parkingId + ", parkingNo=" + parkingNo + ", ptName=" + ptName + ", roomName="
			+ roomName + ", carNum=" + carNum + ", carType=" + carType + ", money=" + money + ", timeStart=" + timeStart
			+ ", timeEnd=" + timeEnd + ", parkSRName=" + parkSRName + ", remarks=" + remarks + "]";
}




	

	
}
