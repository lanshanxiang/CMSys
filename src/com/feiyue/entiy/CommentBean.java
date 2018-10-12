package com.feiyue.entiy;


public class CommentBean {
	private String commentId, contents, extent;
	private String createTime;
	private UserBean userModel;
	private NoticeBean noticeModel;

	public CommentBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentBean(String commentId, String contents, String extent,
			String createTime, UserBean userModel, NoticeBean noticeModel) {
		super();
		this.commentId = commentId;
		this.contents = contents;
		this.extent = extent;
		this.createTime = createTime;
		this.userModel = userModel;
		this.noticeModel = noticeModel;
	}


	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
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


	public UserBean getUserModel() {
		return userModel;
	}

	public void setUserModel(UserBean userModel) {
		this.userModel = userModel;
	}

	public NoticeBean getNoticeModel() {
		return noticeModel;
	}

	public void setNoticeModel(NoticeBean noticeModel) {
		this.noticeModel = noticeModel;
	}

}
