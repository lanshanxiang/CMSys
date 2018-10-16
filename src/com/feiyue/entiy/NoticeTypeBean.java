package com.feiyue.entiy;


public class NoticeTypeBean {

	private int typeId;//类型编号
	private String typeName;//类型名称
	private String extent;//备注
	
	public NoticeTypeBean() {
		super();
	}
	
	
	
	
	public NoticeTypeBean(String typeName, String extent) {
		super();
		this.typeName = typeName;
		this.extent = extent;
	}




	



	public NoticeTypeBean(int typeId, String typeName, String extent) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.extent = extent;
	}




	public int getTypeId() {
		return typeId;
	}




	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}




	public String getTypeName() {
		return typeName;
	}




	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}




	public String getExtent() {
		return extent;
	}




	public void setExtent(String extent) {
		this.extent = extent;
	}




	@Override
	public String toString() {
		return "NoticeTypeBean [typeId=" + typeId + ", typeName=" + typeName + ", extent=" + extent + "]";
	}
	
	
}
