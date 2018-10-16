package com.feiyue.entiy;

/**
 * 居民信息
 *
 * @author lsx
 * 
 */

public class TenementBean {
	private int tenementId; // 居民编号
	private String tenementName; // 居民真实姓名
	private String sex;// 居民性别
	private String aunit;// 所属单位
	private String idCard; // 身份证号
	private String mobilePhone; // 手机号码
	private String email; // 邮箱
	private String areStay; // 入住时间
	private String nationality;// 民族
	private String homeAddress;// 家庭详细地址
	private String residenceType;// 居住类型
	private String maritalStatus;// 婚姻状况
	private int userId;// 用户Id
	private int status; // 0已通过 ，1待审核 2未通过 3 已迁出
	private String remark;// 备注
	private String userName;// 用户登录名

	public int getTenementId() {
		return tenementId;
	}

	public void setTenementId(int tenementId) {
		this.tenementId = tenementId;
	}

	public String getTenementName() {
		return tenementName;
	}

	public void setTenementName(String tenementName) {
		this.tenementName = tenementName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAunit() {
		return aunit;
	}

	public void setAunit(String aunit) {
		this.aunit = aunit;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAreStay() {
		return areStay;
	}

	public void setAreStay(String areStay) {
		this.areStay = areStay;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public String getResidenceType() {
		return residenceType;
	}

	public void setResidenceType(String residenceType) {
		this.residenceType = residenceType;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * 无参构造函数
	 */
	public TenementBean() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 所有参数构造函数
	 * 
	 * @param tenementId
	 * @param tenementName
	 * @param sex
	 * @param aunit
	 * @param idCard
	 * @param mobilePhone
	 * @param email
	 * @param areStay
	 * @param nationality
	 * @param homeAddress
	 * @param residenceType
	 * @param maritalStatus
	 * @param userId
	 * @param status
	 * @param remark
	 * @param userName
	 */

	public TenementBean(int tenementId, String tenementName, String sex, String aunit, String idCard,
			String mobilePhone, String email, String areStay, String nationality, String homeAddress,
			String residenceType, String maritalStatus, int userId, int status, String remark,
			String userName) {
		super();
		this.tenementId = tenementId;
		this.tenementName = tenementName;
		this.sex = sex;
		this.aunit = aunit;
		this.idCard = idCard;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.areStay = areStay;
		this.nationality = nationality;
		this.homeAddress = homeAddress;
		this.residenceType = residenceType;
		this.maritalStatus = maritalStatus;
		this.userId = userId;
		this.status = status;
		this.remark = remark;
		this.userName = userName;
	}
	
	
	/**
	 * 增加居民的构造函数
	 * @param tenementName
	 * @param sex
	 * @param aunit
	 * @param idCard
	 * @param mobilePhone
	 * @param email
	 * @param areStay
	 * @param nationality
	 * @param homeAddress
	 * @param residenceType
	 * @param maritalStatus
	 * @param userId
	 * @param status
	 * @param remark
	 */
	public TenementBean(String tenementName, String sex, String aunit, String idCard, String mobilePhone, String email,
			String areStay, String nationality, String homeAddress, String residenceType, String maritalStatus,
			int userId, String remark,int tenementId) {
		super();
		this.tenementName = tenementName;
		this.sex = sex;
		this.aunit = aunit;
		this.idCard = idCard;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.areStay = areStay;
		this.nationality = nationality;
		this.homeAddress = homeAddress;
		this.residenceType = residenceType;
		this.maritalStatus = maritalStatus;
		this.userId = userId;
		this.remark = remark;
		this.tenementId = tenementId;
	}

	public TenementBean(String tenementName, String sex, String aunit, String idCard, String mobilePhone, String email,
			String areStay, String nationality, String homeAddress, String residenceType, String maritalStatus,
			int userId, String remark) {
		super();
		this.tenementName = tenementName;
		this.sex = sex;
		this.aunit = aunit;
		this.idCard = idCard;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.areStay = areStay;
		this.nationality = nationality;
		this.homeAddress = homeAddress;
		this.residenceType = residenceType;
		this.maritalStatus = maritalStatus;
		this.userId = userId;
		this.remark = remark;
	}

	/**
	 * 删除居民构造函数
	 * 
	 * @param tenementId
	 */
	public TenementBean(int tenementId) {
		super();
		this.tenementId = tenementId;
	}

	@Override
	public String toString() {
		return "TenementBean [tenementId=" + tenementId + ", tenementName=" + tenementName + ", sex=" + sex + ", aunit="
				+ aunit + ", idCard=" + idCard + ", mobilePhone=" + mobilePhone + ", email=" + email + ", areStay="
				+ areStay + ", nationality=" + nationality + ", homeAddress=" + homeAddress + ", residenceType="
				+ residenceType + ", maritalStatus=" + maritalStatus + ", userId=" + userId + ", status=" + status
				+ ", remark=" + remark + ", userName=" + userName + "]";
	}
	
	
}
