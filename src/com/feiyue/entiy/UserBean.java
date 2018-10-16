package com.feiyue.entiy;

/*
 * 用户信息bean
 */


public class UserBean {
	private int userId;
	private String account;// 账号
	private String userName;// 用户姓名
	private String userPwd;
	private String question;// 提示问题
	private String answer;// 答案
	private String register;
	
	
	
	public UserBean(String userName, String userPwd, String question, String answer,int userId) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.question = question;
		this.answer = answer;
	}
	
	public UserBean() {
		super();
	}
	public UserBean(int userId, String account, String userName, String userPwd, String question, String answer,
			String register) {
		super();
		this.userId = userId;
		this.account = account;
		this.userName = userName;
		this.userPwd = userPwd;
		this.question = question;
		this.answer = answer;
		this.register = register;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
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
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	@Override
	public String toString() {
		return "UserBean [userId=" + userId + ", account=" + account + ", userName=" + userName + ", userPwd=" + userPwd
				+ ", question=" + question + ", answer=" + answer + ", register=" + register + "]";
	}


	

}
