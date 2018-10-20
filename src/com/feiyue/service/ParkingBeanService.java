package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.Active;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.util.PageData;

public interface ParkingBeanService {
	// 得到全部车位信息
	public List<ParkingBean> getAllParkingBean();

	// 增加车位
	public boolean addParkingBean(ParkingBean pb);

	// 修改指定车位
	public boolean updateParkingBean(ParkingBean pb);

	// 删除指定车位
	public boolean deleteParkingBean(int pId);

	// 批量删除
	public boolean getBatchDeleteParkingBean(String sql);

	// 前台查询用户车位
	public PageData<ParkingBean> getQueryParkingBean(int page, int pageSize, int tenementId);

	// 前台查询全部车位
	public PageData<ParkingBean> getSelectAllParkingBean(int page, int pageSize);

	// 前台增加我的车位
	public boolean getParkingBeanAdd(ParkingBean pb, int tenementId);
}
