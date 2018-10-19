package com.feiyue.entiy;


public class Lost {
	   
	
      private  int lostId;//编号   
      private  String lostGood;//捡到物品  
      private  String lostDate;//捡到时间 
      private  String lostArea;//捡到地址
      private  String lostName;//捡到者
      private  String lostTel;//捡到者电话
      private  String sDate;  //提交日期
     
      
      public Lost(String lostGood, String lostDate, String lostArea, String lostName, String lostTel) {
  		super();
  		this.lostGood = lostGood;
  		this.lostDate = lostDate;
  		this.lostArea = lostArea;
  		this.lostName = lostName;
  		this.lostTel = lostTel;
  	}
      
      
      public Lost() {
		super();
	}
	public Lost(int lostId, String lostGood, String lostDate, String lostArea, String lostName, String lostTel) {
		super();
		this.lostId = lostId;
		this.lostGood = lostGood;
		this.lostDate = lostDate;
		this.lostArea = lostArea;
		this.lostName = lostName;
		this.lostTel = lostTel;
	}
	
	
	
	public String getsDate() {
		return sDate;
	}


	public void setsDate(String sDate) {
		this.sDate = sDate;
	}


	public  int  getLostId(){
      		return  this.lostId;
      };
      public  void  setLostId(int lostId){
      	this.lostId=lostId;
      }  
     
      public  String  getLostGood(){
      		return  this.lostGood;
      };
      public  void  setLostGood(String lostGood){
      	this.lostGood=lostGood;
      }  
     
      public  String  getLostDate(){
      		return  this.lostDate;
      };
      public  void  setLostDate(String lostDate){
      	this.lostDate=lostDate;
      }  
     
      public  String  getLostArea(){
      		return  this.lostArea;
      };
      public  void  setLostArea(String lostArea){
      	this.lostArea=lostArea;
      }  
     
      public  String  getLostName(){
      		return  this.lostName;
      };
      public  void  setLostName(String lostName){
      	this.lostName=lostName;
      }  
     
      public  String  getLostTel(){
      		return  this.lostTel;
      };
      public  void  setLostTel(String lostTel){
      	this.lostTel=lostTel;
      }
	@Override
	public String toString() {
		return "Lost [lostId=" + lostId + ", lostGood=" + lostGood + ", lostDate=" + lostDate + ", lostArea=" + lostArea
				+ ", lostName=" + lostName + ", lostTel=" + lostTel + ", sDate=" + sDate + "]";
	}  
     
    
}