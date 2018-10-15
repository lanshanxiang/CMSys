package com.feiyue.entiy;

/**
 * 居民信息
 *
 * @author lsx
 * 
 */

public class TenementBean {
	private String tenementId; // 居民编号
	private String tenementName; // 居民真实姓名
	private String sex;// 居民性别
	private String aunit;// 所属单位
	private String idCard; // 身份证号
	private String mobilePhone; // 手机号码
	private String email; // 邮箱
	private String areStay; // 入住时间
	private String createBy;// 审核人
	private String nationality;// 民族
	private String homeAddress;// 家庭详细地址
	private String residenceType;// 居住类型
	private String maritalStatus;// 婚姻状况
	private int userId;// 用户对象
	private int status; // 0已通过  ，1待审核 2未通过 3 已迁出
	private String remark;// 备注
	

	public String getTenementId() {
		return tenementId;
	}
	public void setTenementId(String tenementId) {
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
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
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
	public TenementBean() {
		// TODO Auto-generated constructor stub
	}
	public TenementBean(String tenementId, String tenementName, String sex, String aunit, String idCard,
			String mobilePhone, String email, String areStay, String createBy, String nationality, String homeAddress,
			String residenceType, String maritalStatus, int userId, int status, String remark) {
		super();
		this.tenementId = tenementId;
		this.tenementName = tenementName;
		this.sex = sex;
		this.aunit = aunit;
		this.idCard = idCard;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.areStay = areStay;
		this.createBy = createBy;
		this.nationality = nationality;
		this.homeAddress = homeAddress;
		this.residenceType = residenceType;
		this.maritalStatus = maritalStatus;
		this.userId = userId;
		this.status = status;
		this.remark = remark;
	}
	/**
	 * 增加居民构造函数
	 * @param tenementName
	 * @param sex
	 * @param aunit
	 * @param idCard
	 * @param mobilePhone
	 * @param email
	 * @param areStay
	 * @param createBy
	 * @param nationality
	 * @param homeAddress
	 * @param residenceType
	 * @param maritalStatus
	 * @param status
	 * @param remark
	 */
	public TenementBean(String tenementName, String sex, String aunit, String idCard, String mobilePhone, String email,
			String areStay, String createBy, String nationality, String homeAddress, String residenceType,
			String maritalStatus, int status, String remark) {
		super();
		this.tenementName = tenementName;
		this.sex = sex;
		this.aunit = aunit;
		this.idCard = idCard;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.areStay = areStay;
		this.createBy = createBy;
		this.nationality = nationality;
		this.homeAddress = homeAddress;
		this.residenceType = residenceType;
		this.maritalStatus = maritalStatus;
		this.status = status;
		this.remark = remark;
	}
	
	/**
	 * 修改居民信息构造函数
	 * @param tenementId
	 * @param tenementName
	 * @param aunit
	 * @param idCard
	 * @param mobilePhone
	 * @param email
	 * @param areStay
	 */
	
	public TenementBean(String tenementId, String tenementName, String aunit, String idCard, String mobilePhone,
			String email, String areStay) {
		super();
		this.tenementId = tenementId;
		this.tenementName = tenementName;
		this.aunit = aunit;
		this.idCard = idCard;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.areStay = areStay;
	}
	/**
	 * 删除居民构造函数
	 * @param tenementId
	 */
	public TenementBean(String tenementId) {
		super();
		this.tenementId = tenementId;
	}
	@Override
	public String toString() {
		return "TenementBean [tenementId=" + tenementId + ", tenementName=" + tenementName + ", sex=" + sex + ", aunit="
				+ aunit + ", idCard=" + idCard + ", mobilePhone=" + mobilePhone + ", email=" + email + ", areStay="
				+ areStay + ", createBy=" + createBy + ", nationality=" + nationality + ", homeAddress=" + homeAddress
				+ ", residenceType=" + residenceType + ", maritalStatus=" + maritalStatus + ", userId=" + userId
				+ ", status=" + status + ", remark=" + remark + "]";
	}

	

}
