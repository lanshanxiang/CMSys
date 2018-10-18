package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.ParkingBeanDao;
import com.feiyue.dao.impl.ParkingBeanDaoImpl;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.service.ParkingBeanService;
import com.feiyue.util.PageData;

public class ParkingBeanServiceImpl implements ParkingBeanService {
	ParkingBeanDao pbd = new ParkingBeanDaoImpl();

	@Override
	public List<ParkingBean> getAllParkingBean() {
		// TODO Auto-generated method stub
		return pbd.getAllParkingBean();
	}

	@Override
	public boolean addParkingBean(ParkingBean pb) {
		// TODO Auto-generated method stub
		return pbd.addParkingBean(pb);
	}

	@Override
	public boolean updateParkingBean(ParkingBean pb) {
		// TODO Auto-generated method stub
		return pbd.updateParkingBean(pb);
	}

	@Override
	public boolean deleteParkingBean(int pId) {
		// TODO Auto-generated method stub
		return pbd.deleteParkingBean(pId);
	}

	@Override
	public boolean getBatchDeleteParkingBean(String sql) {
		// TODO Auto-generated method stub
		return pbd.batchDeleteParkingBean(sql);
	}

	@Override
	public PageData<ParkingBean> getQueryParkingBean(int page, int pageSize,int tenementId) {
		// TODO Auto-generated method stub
		return pbd.queryParkingBean(page, pageSize, tenementId);
	}

	@Override
	public PageData<ParkingBean> getSelectAllParkingBean(int page, int pageSize) {
		// TODO Auto-generated method stub
		return pbd.selectAllParkingBean(page, pageSize);
	}
	
	
	
}
