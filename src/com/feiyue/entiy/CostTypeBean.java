package com.feiyue.entiy;



/**
 * 费用类型类
 * 
 * @author guoBo
 * 
 */

public class CostTypeBean {
	private int ctId;// 费用类型编号
	private String ctName;// 费用类型名称
	private String extent;// 扩展字段


	

	public int getCtId() {
		return ctId;
	}

	public void setCtId(int ctId) {
		this.ctId = ctId;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	public String getCtName() {
		return ctName;
	}

	public void setCtName(String ctName) {
		this.ctName = ctName;
	}

	public CostTypeBean() {
		super();
	}

	public CostTypeBean(int ctId, String ctName, String extent) {
		super();
		this.ctId = ctId;
		this.ctName = ctName;
		this.extent = extent;
	}

	public CostTypeBean(String ctName, String extent) {
		super();
		this.ctName = ctName;
		this.extent = extent;
	}

	@Override
	public String toString() {
		return "CostTypeBean [ctId=" + ctId + ", ctName=" + ctName + ", extent=" + extent + "]";
	}
		
	
	
}
