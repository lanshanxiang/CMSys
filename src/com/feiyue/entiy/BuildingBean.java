package com.feiyue.entiy;

/**
 * 楼房管理的实体类
 * @author Administrator
 *
 */
public class BuildingBean {
	private int buildingId;// 楼房编号
	private String buildingName;// 楼名(A-1幢、A-2幢)
	private String face;// 朝向
	private double buildArea;// 建筑面积
	private int floorNum;// 层数
	private double height;// 高度
	private String buildTime;// 建筑时间
	private String type;// 类别
	private int villageId;// 小区编号（外键，与小区信息表建立联系）
	private String extent;//备注
	private String villageName;//小区名字
	
	
	
	public String getVillageName() {
		return villageName;
	}

	public void setVillageName(String villageName) {
		this.villageName = villageName;
	}

	public BuildingBean() {
		super();
	}

	public BuildingBean(String buildingName, String face, double buildArea, int floorNum, double height,
			String buildTime, String type, int villageId, String extent,int buildingId) {
		super();
		this.buildingId = buildingId;
		this.buildingName = buildingName;
		this.face = face;
		this.buildArea = buildArea;
		this.floorNum = floorNum;
		this.height = height;
		this.buildTime = buildTime;
		this.type = type;
		this.villageId = villageId;
		this.extent = extent;
	}
	
	public BuildingBean(String buildingName, String face, double buildArea, int floorNum, double height,
			String buildTime, String type, int villageId, String extent) {
		super();
		this.buildingName = buildingName;
		this.face = face;
		this.buildArea = buildArea;
		this.floorNum = floorNum;
		this.height = height;
		this.buildTime = buildTime;
		this.type = type;
		this.villageId = villageId;
		this.extent = extent;
	}
	
	public BuildingBean(int buildingId, String buildingName, String face, double buildArea, int floorNum, double height,
			String buildTime, String type, int villageId, String extent) {
		super();
		this.buildingId = buildingId;
		this.buildingName = buildingName;
		this.face = face;
		this.buildArea = buildArea;
		this.floorNum = floorNum;
		this.height = height;
		this.buildTime = buildTime;
		this.type = type;
		this.villageId = villageId;
		this.extent = extent;
	}

	public int getBuildingId() {
		return buildingId;
	}

	public void setBuildingId(int buildingId) {
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

	public int getVillageId() {
		return villageId;
	}

	public void setVillageId(int villageId) {
		this.villageId = villageId;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	@Override
	public String toString() {
		return "BuildingBean [buildingId=" + buildingId + ", buildingName=" + buildingName + ", face=" + face
				+ ", buildArea=" + buildArea + ", floorNum=" + floorNum + ", height=" + height + ", buildTime="
				+ buildTime + ", type=" + type + ", villageId=" + villageId + ", extent=" + extent + ", villageName="
				+ villageName + "]";
	}
	
	
}
