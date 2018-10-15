package com.feiyue.entiy;
/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月13日 上午11:11:18 
 *  
 */
public class ManagerBean {
	private int mId;//管理员编号
	private String mName;//管理员账号
	private String mPwd;//管理员密码
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmPwd() {
		return mPwd;
	}
	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}
	public ManagerBean() {
		// TODO Auto-generated constructor stub
	}
	public ManagerBean(int mId, String mName, String mPwd) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.mPwd = mPwd;
	}
	@Override
	public String toString() {
		return "Manager [mId=" + mId + ", mName=" + mName + ", mPwd=" + mPwd + "]";
	}
	
	
	
	
}
