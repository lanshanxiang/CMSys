package com.feiyue.entiy;

/*
 * 用户信息bean
 */


public class UserBean {
	private int userId;//用户ID
	private String userName;//用户名称
	private String userPwd;//用户密码
	private String useSex;//用户性别
	private int userAge;//用户年龄
	private String tenementName;//住户名称
	private String register;//账号
	private String question;//密保问题
	private String answer;//密保答案
	private int state;//用户状态(1启用,0停用)
	private String tenementId;//住户Id
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUseSex() {
		return useSex;
	}
	public void setUseSex(String useSex) {
		this.useSex = useSex;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public String getTenementName() {
		return tenementName;
	}
	public void setTenementName(String tenementName) {
		this.tenementName = tenementName;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public UserBean() {
		super();
	}
	
	@Override
	public String toString() {
		return "UserBean [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", useSex=" + useSex
				+ ", userAge=" + userAge + ", tenementName=" + tenementName + ", register=" + register + ", question="
				+ question + ", answer=" + answer + ", state=" + state + ", tenementId=" + tenementId + "]";
	}
	
	
	
	

}
