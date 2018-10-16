package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.ParkingBean;

public interface ParkingBeanService {
	//得到全部车位信息
		public List<ParkingBean> getAllParkingBean();
		//增加车位
		public boolean addParkingBean(ParkingBean pb);
	    //修改指定车位
	    public boolean updateParkingBean(ParkingBean pb);
	    //删除指定车位
	    public boolean deleteParkingBean(int pId);
	  //批量删除
	     public boolean getBatchDeleteParkingBean(String sql);
}
