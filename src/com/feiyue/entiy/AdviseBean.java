package com.feiyue.entiy;


public class AdviseBean {
	private String adviseId, contents, extent;
	/*
	 * Timestamp
	 */
	private String createTime, answerTime;// 数据库没有answertime字段
	// private int sateFlag;
	private AdviseTypeBean adviceTypeModel;

	private UserBean userModel;

	public AdviseBean() {
		super();
	}

	public AdviseBean(String adviseId, String contents, String extent,
			String createTime, String answerTime, int sateFlag,
			AdviseTypeBean adviceTypeModel, UserBean userModel) {
		super();
		this.adviseId = adviseId;
		this.contents = contents;
		this.extent = extent;
		this.createTime = createTime;
		this.answerTime = answerTime;
		// this.sateFlag = sateFlag;
		this.adviceTypeModel = adviceTypeModel;
		this.userModel = userModel;
	}


	public String getAdviseId() {
		return adviseId;
	}

	public void setAdviseId(String adviseId) {
		this.adviseId = adviseId;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getExtent() {
		return extent;
	}

	public void setExtent(String extent) {
		this.extent = extent;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getAnswerTime() {
		return answerTime;
	}

	public void setAnswerTime(String answerTime) {
		this.answerTime = answerTime;
	}


	public AdviseTypeBean getAdviceTypeModel() {
		return adviceTypeModel;
	}

	public void setAdviceTypeModel(AdviseTypeBean adviceTypeModel) {
		this.adviceTypeModel = adviceTypeModel;
	}


	public UserBean getUserModel() {
		return userModel;
	}

	public void setUserModel(UserBean userModel) {
		this.userModel = userModel;
	}

}
