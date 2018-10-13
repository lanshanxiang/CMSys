package com.feiyue.entiy;


/**
 * 小区表的实体类
 * @author Administrator
 *
 */
public class VillageInfoBean {
	private int villageId;//编号
	private String villageName;
	private String linkman;// 负责人
	private String setUpTime;// 建立日期
	private String phone;//电话
	private String mobilePhone;//手机
	private String floorArea;// 占地面积
	private String buildingArea;// 建筑面积
	private String garageArea;// 车库面积
	private String stallNum;// 车位数
	private String greenArea;// 绿化面积
	private String location;// 位置说明
	private String introduction;// 小区说明
	private String extent;//备注


	
	
	
	public VillageInfoBean() {
		super();
	}

	
	public VillageInfoBean(String villageName, String linkman, String setUpTime,
			String phone, String mobilePhone, String floorArea, String buildingArea, String garageArea, String stallNum,
			String greenArea, String location, String introduction, String extent,int villageId) {
		super();
		this.villageId = villageId;
		this.villageName = villageName;
		this.linkman = linkman;
		this.setUpTime = setUpTime;
		this.phone = phone;
		this.mobilePhone = mobilePhone;
		this.floorArea = floorArea;
		this.buildingArea = buildingArea;
		this.garageArea = garageArea;
		this.stallNum = stallNum;
		this.greenArea = greenArea;
		this.location = location;
		this.introduction = introduction;
		this.extent = extent;
	}
	
	public VillageInfoBean(String villageName, String linkman, String setUpTime,
			String phone, String mobilePhone, String floorArea, String buildingArea, String garageArea, String stallNum,
			String greenArea, String location, String introduction, String extent) {
		super();
		this.villageName = villageName;
		this.linkman = linkman;
		this.setUpTime = setUpTime;
		this.phone = phone;
		this.mobilePhone = mobilePhone;
		this.floorArea = floorArea;
		this.buildingArea = buildingArea;
		this.garageArea = garageArea;
		this.stallNum = stallNum;
		this.greenArea = greenArea;
		this.location = location;
		this.introduction = introduction;
		this.extent = extent;
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


	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getSetUpTime() {
		return setUpTime;
	}

	public void setSetUpTime(String setUpTime) {
		this.setUpTime = setUpTime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getFloorArea() {
		return floorArea;
	}

	public void setFloorArea(String floorArea) {
		this.floorArea = floorArea;
	}

	public String getBuildingArea() {
		return buildingArea;
	}

	public void setBuildingArea(String buildingArea) {
		this.buildingArea = buildingArea;
	}

	public String getGarageArea() {
		return garageArea;
	}

	public void setGarageArea(String garageArea) {
		this.garageArea = garageArea;
	}

	public String getStallNum() {
		return stallNum;
	}

	public void setStallNum(String stallNum) {
		this.stallNum = stallNum;
	}

	public String getGreenArea() {
		return greenArea;
	}

	public void setGreenArea(String greenArea) {
		this.greenArea = greenArea;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	@Override
	public String toString() {
		return "VillageInfoBean [villageId=" + villageId + ", villageName=" + villageName + ", linkman=" + linkman + ", setUpTime=" + setUpTime + ", phone=" + phone
				+ ", mobilePhone=" + mobilePhone + ", floorArea=" + floorArea + ", buildingArea=" + buildingArea
				+ ", garageArea=" + garageArea + ", stallNum=" + stallNum + ", greenArea=" + greenArea + ", location="
				+ location + ", introduction=" + introduction + ", extent=" + extent + "]";
	}
	
	

}
