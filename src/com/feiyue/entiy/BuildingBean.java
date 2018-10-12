package com.feiyue.entiy;


public class BuildingBean {
	private String buildingId;// 楼房编号
	private String buildingName;// 楼名(A-1幢、A-2幢)
	private String face;// 朝向
	private double buildArea;// 建筑面积
	private int floorNum;// 层数
	private double height;// 高度
	private String buildTime;// 建筑时间
	private String type;// 类别
	private VillageInfoBean villageInfoModel;// 小区编号（外键，与小区信息表建立联系）
	private String extent;

	
	public String getBuildingId() {
		return buildingId;
	}

	public void setBuildingId(String buildingId) {
		this.buildingId = buildingId;
	}

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public double getBuildArea() {
		return buildArea;
	}

	public void setBuildArea(double buildArea) {
		this.buildArea = buildArea;
	}

	public int getFloorNum() {
		return floorNum;
	}

	public void setFloorNum(int floorNum) {
		this.floorNum = floorNum;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public String getBuildTime() {
		return buildTime;
	}

	public void setBuildTime(String buildTime) {
		this.buildTime = buildTime;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public VillageInfoBean getVillageInfoModel() {
		return villageInfoModel;
	}

	public void setVillageInfoModel(VillageInfoBean villageInfoModel) {
		this.villageInfoModel = villageInfoModel;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}
}
