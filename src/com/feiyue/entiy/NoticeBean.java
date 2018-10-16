package com.feiyue.entiy;




public class NoticeBean {
	private int noticeId;//通知公告编号
	private String titles;//通知公告标题
	private String contents;//通知公告内容
	private int typeId; //通知公告类型编号
	private String releaseTime;//通知公告发布时间
	private String Extent;//扩展
	
	public NoticeBean() {
		super();
	}

	public NoticeBean(String titles, String contents, int typeId, String releaseTime, String extent) {
		super();
		this.titles = titles;
		this.contents = contents;
		this.typeId = typeId;
		this.releaseTime = releaseTime;
		Extent = extent;
	}

	public NoticeBean(int noticeId, String titles, String contents, int typeId, String releaseTime, String extent) {
		super();
		this.noticeId = noticeId;
		this.titles = titles;
		this.contents = contents;
		this.typeId = typeId;
		this.releaseTime = releaseTime;
		Extent = extent;
	}
	
	
	
	
	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public String getTitles() {
		return titles;
	}

	public void setTitles(String titles) {
		this.titles = titles;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}

	public String getExtent() {
		return Extent;
	}

	public void setExtent(String extent) {
		Extent = extent;
	}

	@Override
	public String toString() {
		return "NoticeBean [noticeId=" + noticeId + ", titles=" + titles + ", contents=" + contents + ", typeId="
				+ typeId + ", releaseTime=" + releaseTime + ", Extent=" + Extent + "]";
	}
	
	
	
}
	

	