package com.feiyue.entiy;

/*
 * 用户信息bean
 */


public class UserBean {
	private String userId;
	private String userName;// 用户账号
	private String userPwd;
	private String idEntityCard;// 身份证号码
	private String question;// 提示问题
	private String answer;// 答案
	private String email;
	private RoleBean roleModel;// 角色对象


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
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
	

	public String getIdEntityCard() {
		return idEntityCard;
	}

	public void setIdEntityCard(String idEntityCard) {
		this.idEntityCard = idEntityCard;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public RoleBean getRoleModel() {
		return roleModel;
	}

	public void setRoleModel(RoleBean roleModel) {
		this.roleModel = roleModel;
	}
	
	
}
