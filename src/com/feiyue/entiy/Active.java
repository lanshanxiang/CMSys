package com.feiyue.entiy;


public class Active {
	   
	
      private  int activeId;
     
	
      private  String activeName;
     
	
      private  String activePlace;
     
	
      private  String activeDate;
     
	
      private  String activeContent;
     
	
      private  String activeJoinTel;
      
      
      
     
      
      public Active() {
		super();
	}
	public Active(int activeId, String activeName, String activePlace, String activeDate, String activeContent,
			String activeJoinTel) {
		super();
		this.activeId = activeId;
		this.activeName = activeName;
		this.activePlace = activePlace;
		this.activeDate = activeDate;
		this.activeContent = activeContent;
		this.activeJoinTel = activeJoinTel;
	}
	public  int  getActiveId(){
      		return  this.activeId;
      };
      public  void  setActiveId(int activeId){
      	this.activeId=activeId;
      }  
     
      public  String  getActiveName(){
      		return  this.activeName;
      };
      public  void  setActiveName(String activeName){
      	this.activeName=activeName;
      }  
     
      public  String  getActivePlace(){
      		return  this.activePlace;
      };
      public  void  setActivePlace(String activePlace){
      	this.activePlace=activePlace;
      }  
     
      public  String  getActiveDate(){
      		return  this.activeDate;
      };
      public  void  setActiveDate(String activeDate){
      	this.activeDate=activeDate;
      }  
     
      public  String  getActiveContent(){
      		return  this.activeContent;
      };
      public  void  setActiveContent(String activeContent){
      	this.activeContent=activeContent;
      }  
     
      public  String  getActiveJoinTel(){
      		return  this.activeJoinTel;
      };
      public  void  setActiveJoinTel(String activeJoinTel){
      	this.activeJoinTel=activeJoinTel;
      }
	@Override
	public String toString() {
		return "Active [activeId=" + activeId + ", activeName=" + activeName + ", activePlace=" + activePlace
				+ ", activeDate=" + activeDate + ", activeContent=" + activeContent + ", activeJoinTel=" + activeJoinTel
				+ "]";
	}  
     
    
}
