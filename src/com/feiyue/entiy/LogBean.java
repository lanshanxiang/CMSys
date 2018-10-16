package com.feiyue.entiy;

public class LogBean {
     private int logId;
     private String logName;
     private String logContent;
     private String logDate;
     
     
    public LogBean(String logName, String logContent) {
 		super();
 		this.logName = logName;
 		this.logContent = logContent;
 	}
     
	public LogBean() {
		super();
	}
	public LogBean(int logId, String logName, String logContent, String logDate) {
		super();
		this.logId = logId;
		this.logName = logName;
		this.logContent = logContent;
		this.logDate = logDate;
	}
	public int getLogId() {
		return logId;
	}
	public void setLogId(int logId) {
		this.logId = logId;
	}
	public String getLogName() {
		return logName;
	}
	public void setLogName(String logName) {
		this.logName = logName;
	}
	public String getLogContent() {
		return logContent;
	}
	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}
	public String getLogDate() {
		return logDate;
	}
	public void setLogDate(String logDate) {
		this.logDate = logDate;
	}
	@Override
	public String toString() {
		return "LogBean [logId=" + logId + ", logName=" + logName + ", logContent=" + logContent + ", logDate="
				+ logDate + "]";
	}
     
     
     
}
