package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.TenementBeanDao;
import com.feiyue.dao.impl.TenementBeanDaoImpl;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.TenementBeanService;

public class TenementBeanServiceImpl implements TenementBeanService{

	TenementBeanDao tbd = new TenementBeanDaoImpl();
	@Override
	public List<TenementBean> getTenementBean() {
		// TODO Auto-generated method stub
		return tbd.queryTenementBean();
	}
	@Override
	public boolean getInsertTenementBean(TenementBean t) {
		// TODO Auto-generated method stub
		return tbd.insertTenementBean(t);
	}
	@Override
	public boolean getDeleteTenementBean(int tenementId) {
		// TODO Auto-generated method stub
		return tbd.deleteTenementBean(tenementId);
	}
	@Override
	public boolean updateTenementBean(TenementBean t) {
		// TODO Auto-generated method stub
		return tbd.updateTenementBean(t);
	}
	@Override
	public List<TenementBean> getQueryTenementBeanByIsY() {
		// TODO Auto-generated method stub
		return tbd.queryTenementBeanByIsY();
	}
	@Override
	public List<TenementBean> getQueryTenementBeanByIsYN() {
		// TODO Auto-generated method stub
		return tbd.queryTenementBeanByIsYN();
	}
	@Override
	public List<TenementBean> getQueryTenementBeanByIsN() {
		// TODO Auto-generated method stub
		return tbd.queryTenementBeanByIsN();
	}
	@Override
	public List<TenementBean> getQueryTenementBeanByIsYR() {
		// TODO Auto-generated method stub
		return tbd.queryTenementBeanByIsYR();
	}

}
