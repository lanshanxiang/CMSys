package com.feiyue.entiy;




/**
 * 车位出售类别
 * 
 */

public class ParkSRTypeBean {
	private String parkSRId;
	private String parkSRName;
	private String extent;// 扩展字段

	public String getParkSRId() {
		return parkSRId;
	}

	public void setParkSRId(String parkSRId) {
		this.parkSRId = parkSRId;
	}

	public String getParkSRName() {
		return parkSRName;
	}

	public void setParkSRName(String parkSRName) {
		this.parkSRName = parkSRName;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

}
