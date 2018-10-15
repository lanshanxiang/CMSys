package com.feiyue.entiy;


public class ComplainBean {
	   
	 //自动编号
      private  int conplyId;
     
	 //投诉人姓名
      private  String conplyName;
     
	 //投诉问题
      private  String conplyQuestion;
     
	 //投诉时间
      private  String conplyTime;
     
	 //家庭电话
      private  String conplyTel;
     
	 //手机
      private  String conplyPhone;
     
	 //未处理（0） 处理中（1）\r\n已处理(2)\r\n未处理（0） 处理中（1）\r\n已处理(2)\r\n未处理（0） 处理中（1）\r\n已处理(2)\r\n未处理（0） 处理中（1）\r\n已处理(2)\r\n未处理（0）  处理中（1） 已处理（2）
      private  int conplyStatus;
     
	 //备注
      private  String conplyRemark;
      
      public ComplainBean(String conplyName, String conplyQuestion, String conplyTime, String conplyTel,
  			String conplyPhone, int conplyStatus, String conplyRemark,int conplyId) {
  		super();
  		this.conplyId = conplyId;
  		this.conplyName = conplyName;
  		this.conplyQuestion = conplyQuestion;
  		this.conplyTime = conplyTime;
  		this.conplyTel = conplyTel;
  		this.conplyPhone = conplyPhone;
  		this.conplyStatus = conplyStatus;
  		this.conplyRemark = conplyRemark;
  	}
      
      public ComplainBean(String conplyName, String conplyQuestion, String conplyTel,
    			String conplyPhone, int conplyStatus, String conplyRemark) {
    		super();
    		this.conplyName = conplyName;
    		this.conplyQuestion = conplyQuestion;
    		this.conplyTel = conplyTel;
    		this.conplyPhone = conplyPhone;
    		this.conplyStatus = conplyStatus;
    		this.conplyRemark = conplyRemark;
    	}
      
      
      public ComplainBean(String conplyName, String conplyQuestion, String conplyTime, String conplyTel,
  			String conplyPhone, int conplyStatus, String conplyRemark) {
  		super();
  		this.conplyName = conplyName;
  		this.conplyQuestion = conplyQuestion;
  		this.conplyTime = conplyTime;
  		this.conplyTel = conplyTel;
  		this.conplyPhone = conplyPhone;
  		this.conplyStatus = conplyStatus;
  		this.conplyRemark = conplyRemark;
  	}
      
      public ComplainBean() {
		super();
	  }
	public ComplainBean(int conplyId, String conplyName, String conplyQuestion, String conplyTime, String conplyTel,
			String conplyPhone, int conplyStatus, String conplyRemark) {
		super();
		this.conplyId = conplyId;
		this.conplyName = conplyName;
		this.conplyQuestion = conplyQuestion;
		this.conplyTime = conplyTime;
		this.conplyTel = conplyTel;
		this.conplyPhone = conplyPhone;
		this.conplyStatus = conplyStatus;
		this.conplyRemark = conplyRemark;
	}
	public  int  getConplyId(){
      		return  this.conplyId;
      };
      public  void  setConplyId(int conplyId){
      	this.conplyId=conplyId;
      }  
     
      public  String  getConplyName(){
      		return  this.conplyName;
      };
      public  void  setConplyName(String conplyName){
      	this.conplyName=conplyName;
      }  
     
      public  String  getConplyQuestion(){
      		return  this.conplyQuestion;
      };
      public  void  setConplyQuestion(String conplyQuestion){
      	this.conplyQuestion=conplyQuestion;
      }  
     
      public  String  getConplyTime(){
      		return  this.conplyTime;
      };
      public  void  setConplyTime(String conplyTime){
      	this.conplyTime=conplyTime;
      }  
     
      public  String  getConplyTel(){
      		return  this.conplyTel;
      };
      public  void  setConplyTel(String conplyTel){
      	this.conplyTel=conplyTel;
      }  
     
      public  String  getConplyPhone(){
      		return  this.conplyPhone;
      };
      public  void  setConplyPhone(String conplyPhone){
      	this.conplyPhone=conplyPhone;
      }  
     
      public  int  getConplyStatus(){
      		return  this.conplyStatus;
      };
      public  void  setConplyStatus(int conplyStatus){
      	this.conplyStatus=conplyStatus;
      }  
     
      public  String  getConplyRemark(){
      		return  this.conplyRemark;
      };
      public  void  setConplyRemark(String conplyRemark){
      	this.conplyRemark=conplyRemark;
      }
	@Override
	public String toString() {
		return "Complain [conplyId=" + conplyId + ", conplyName=" + conplyName + ", conplyQuestion=" + conplyQuestion
				+ ", conplyTime=" + conplyTime + ", conplyTel=" + conplyTel + ", conplyPhone=" + conplyPhone
				+ ", conplyStatus=" + conplyStatus + ", conplyRemark=" + conplyRemark + "]";
	}  
     
    
}
