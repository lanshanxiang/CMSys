package com.feiyue.entiy;



/**
 * 
 * 车位信息
 * 
 */


public class ParkkingBean {
	private String parkkingId;// 车位编号
	private RoomBean roomModel;// 住房编号
	private String carNum;// 车牌号
	private String carType;// 车类型
	private String remarks;// 备注
	private String timestart;// 时间
	private String timend;// 结束时间
	private String money;// 出租、出售的钱
	private String tag;// 备注
	private String extent;// 扩展字段
	private ParkTypeBean parkTypeModel;// 车位类型
	private ParkSRTypeBean parkSRTypeModel;// 出售出租类型


	public String getParkkingId() {
		return parkkingId;
	}

	public void setParkkingId(String parkkingId) {
		this.parkkingId = parkkingId;
	}


	public RoomBean getRoomModel() {
		return roomModel;
	}

	public void setRoomModel(RoomBean roomModel) {
		this.roomModel = roomModel;
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

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getTimestart() {
		return timestart;
	}

	public void setTimestart(String timestart) {
		this.timestart = timestart;
	}

	public String getTimend() {
		return timend;
	}

	public void setTimend(String timend) {
		this.timend = timend;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}


	public ParkTypeBean getParkTypeModel() {
		return parkTypeModel;
	}

	public void setParkTypeModel(ParkTypeBean parkTypeModel) {
		this.parkTypeModel = parkTypeModel;
	}


	public ParkSRTypeBean getParkSRTypeModel() {
		return parkSRTypeModel;
	}

	public void setParkSRTypeModel(ParkSRTypeBean parkSRTypeModel) {
		this.parkSRTypeModel = parkSRTypeModel;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

}
