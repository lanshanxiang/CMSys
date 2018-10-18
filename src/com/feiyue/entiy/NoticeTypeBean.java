package com.feiyue.entiy;


public class NoticeTypeBean {

	private int typeId;//类型编号
	private String typeName;//类型名称
	private String remark;//备注
	
	public NoticeTypeBean() {
		super();
	}
	
	
	
	
	




	



	public NoticeTypeBean(String typeName, String remark) {
		super();
		this.typeName = typeName;
		this.remark = remark;
	}












	public NoticeTypeBean(int typeId, String typeName, String remark) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.remark = remark;
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




	


	public String getRemark() {
		return remark;
	}




	public void setRemark(String remark) {
		this.remark = remark;
	}




	@Override
	public String toString() {
		return "NoticeTypeBean [typeId=" + typeId + ", typeName=" + typeName + ", remark=" + remark + "]";
	}





	
	
}
