package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.CostTypeDao;
import com.feiyue.dao.impl.CostTypeDaoImpl;
import com.feiyue.entiy.CostTypeBean;
import com.feiyue.service.CostTypeService;
import com.feiyue.util.PageData;

public class CostTypeServiceImpl implements CostTypeService{
	CostTypeDao ctd=new CostTypeDaoImpl();

	@Override
	public boolean addCostType(CostTypeBean CostType) {
		// TODO Auto-generated method stub
		return ctd.add(CostType);
	}
	@Override
	public boolean deleteCostType(int ctId) {
		// TODO Auto-generated method stub
		return ctd.delete(ctId);
	}
	@Override
	public boolean updateCostType(CostTypeBean CostType) {
		// TODO Auto-generated method stub
		return ctd.update(CostType);
	}
	@Override
	public List<CostTypeBean> getCostType() {
		// TODO Auto-generated method stub
		return ctd.getCostType();
	}
	@Override
	public PageData<CostTypeBean> queryCostTypeByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		return ctd.queryCostTypeByPage(page, pageSize, keywords);
	}
	@Override
	public List<CostTypeBean> selectCostType(String keyword) {
		// TODO Auto-generated method stub
		return ctd.selectCostType(keyword);
	}
	@Override
	public boolean getBatchDeleteCostType(String sql) {
		// TODO Auto-generated method stub
		return ctd.batchDeleteCostType(sql);
	}
	
}
