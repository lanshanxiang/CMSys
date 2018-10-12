package com.feiyue.entiy;


// 大小写
public class AdviseTypeBean {
	private String adviseTypeId, adviseTypeName, extent;

	public AdviseTypeBean() {
		super();
	}

	public AdviseTypeBean(String adviseTypeId, String adviseTypeName,
			String extent) {
		super();
		this.adviseTypeId = adviseTypeId;
		this.adviseTypeName = adviseTypeName;
		this.extent = extent;
	}


	public String getAdviseTypeId() {
		return adviseTypeId;
	}

	public void setAdviseTypeId(String adviseTypeId) {
		this.adviseTypeId = adviseTypeId;
	}

	public String getAdviseTypeName() {
		return adviseTypeName;
	}

	public void setAdviseTypeName(String adviseTypeName) {
		this.adviseTypeName = adviseTypeName;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

}
