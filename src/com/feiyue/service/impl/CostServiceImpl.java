package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.CostDao;
import com.feiyue.dao.impl.CostDaoImpl;
import com.feiyue.entiy.CostBean;
import com.feiyue.service.CostService;
import com.feiyue.util.PageData;

public class CostServiceImpl implements CostService{
	CostDao cd=new CostDaoImpl();

	@Override
	public boolean addCost(CostBean cost) {
		// TODO Auto-generated method stub
		return cd.add(cost);
	}
	@Override
	public boolean deleteCost(int costId) {
		// TODO Auto-generated method stub
		return cd.delete(costId);
	}
	@Override
	public boolean updateCost(CostBean cost) {
		// TODO Auto-generated method stub
		return cd.update(cost);
	}
	@Override
	public List<CostBean> getCost() {
		// TODO Auto-generated method stub
		return cd.getCost();
	}
	@Override
	public PageData<CostBean> queryCostByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return cd.queryCostByPage(page, pageSize, keywords);
	}
	@Override
	public List<CostBean> selectCost(String keyword) {
		// TODO Auto-generated method stub
		return cd.selectCost(keyword);
	}
	
}
