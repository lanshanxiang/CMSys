package com.feiyue.entiy;

/**
 * 房间表的实体类
 * @author Administrator
 *
 */
public class RoomBean {
	private int roomId;// 房间编号
	private String roomName;// 房间名称
	private int buildingId;// 楼房编号（外键，与楼房信息表建立联系）
	private String unitNum;// 单元号（1单元，2单元...）
	private String eApartment;// 房间简介
	private double buildArea;// 建筑面积
	private double usingArea;// 使用面积
	private String face;// 朝向
	private String extent;//备注
	private String housetype;// 户型
	private String lease;//是否租赁
	private String buildingName; //楼房名称
	
	
	public RoomBean(String roomName, int buildingId, String unitNum, String eApartment, double buildArea,
			double usingArea, String face, String extent, String housetype, String lease,int roomId) {
		super();
		this.roomId = roomId;
		this.roomName = roomName;
		this.buildingId = buildingId;
		this.unitNum = unitNum;
		this.eApartment = eApartment;
		this.buildArea = buildArea;
		this.usingArea = usingArea;
		this.face = face;
		this.extent = extent;
		this.housetype = housetype;
		this.lease = lease;
	}
	
	public RoomBean(String roomName, int buildingId, String unitNum, String eApartment, double buildArea,
			double usingArea, String face, String extent, String housetype, String lease) {
		super();
		this.roomName = roomName;
		this.buildingId = buildingId;
		this.unitNum = unitNum;
		this.eApartment = eApartment;
		this.buildArea = buildArea;
		this.usingArea = usingArea;
		this.face = face;
		this.extent = extent;
		this.housetype = housetype;
		this.lease = lease;
	}
	
	public RoomBean() {
		super();
	}

	public RoomBean(int roomId, String roomName, int buildingId, String unitNum, String eApartment, double buildArea,
			double usingArea, String face, String extent, String housetype, String lease, String buildingName) {
		super();
		this.roomId = roomId;
		this.roomName = roomName;
		this.buildingId = buildingId;
		this.unitNum = unitNum;
		this.eApartment = eApartment;
		this.buildArea = buildArea;
		this.usingArea = usingArea;
		this.face = face;
		this.extent = extent;
		this.housetype = housetype;
		this.lease = lease;
		this.buildingName = buildingName;
	}

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public int getBuildingId() {
		return buildingId;
	}

	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
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

	public String getUnitNum() {
		return unitNum;
	}

	public void setUnitNum(String unitNum) {
		this.unitNum = unitNum;
	}

	public String geteApartment() {
		return eApartment;
	}

	public void seteApartment(String eApartment) {
		this.eApartment = eApartment;
	}

	public double getBuildArea() {
		return buildArea;
	}

	public void setBuildArea(double buildArea) {
		this.buildArea = buildArea;
	}

	public double getUsingArea() {
		return usingArea;
	}

	public void setUsingArea(double usingArea) {
		this.usingArea = usingArea;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	public String getLease() {
		return lease;
	}

	public void setLease(String lease) {
		this.lease = lease;
	}

	public String getHousetype() {
		return housetype;
	}

	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}

	@Override
	public String toString() {
		return "RoomBean [roomId=" + roomId + ", roomName=" + roomName + ", buildingId=" + buildingId + ", unitNum="
				+ unitNum + ", eApartment=" + eApartment + ", buildArea=" + buildArea + ", usingArea=" + usingArea
				+ ", face=" + face + ", extent=" + extent + ", housetype=" + housetype + ", lease=" + lease
				+ ", buildingName=" + buildingName + "]";
	}
	
	
	
}
