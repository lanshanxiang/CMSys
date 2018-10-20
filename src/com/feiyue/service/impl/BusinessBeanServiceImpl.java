package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.BusinessBeanDao;
import com.feiyue.dao.impl.BusinessBeanDaoImpl;
import com.feiyue.entiy.BusinessBean;
import com.feiyue.service.BusinessBeanService;
import com.feiyue.util.PageData;

public class BusinessBeanServiceImpl implements BusinessBeanService {
	BusinessBeanDao bbd=new BusinessBeanDaoImpl();

	@Override
	public List<BusinessBean> getQueryBusinessBean() {
		// TODO Auto-generated method stub
		return bbd.queryBusinessBean();
	}

	@Override
	public List<BusinessBean> getQueryBusinessBeanStateY() {
		// TODO Auto-generated method stub
		return bbd.queryBusinessBeanStateY();
	}

	@Override
	public List<BusinessBean> getQueryBusinessBeanStateYN() {
		// TODO Auto-generated method stub
		return bbd.queryBusinessBeanStateYN();
	}

	@Override
	public List<BusinessBean> getQueryBusinessBeanStateN() {
		// TODO Auto-generated method stub
		return bbd.queryBusinessBeanStateN();
	}

	@Override
	public boolean getAddBusinessBean(BusinessBean bb) {
		// TODO Auto-generated method stub
		return bbd.addBusinessBean(bb);
	}

	@Override
	public boolean getUpdateBusinessBean(BusinessBean bb) {
		// TODO Auto-generated method stub
		return bbd.updateBusinessBean(bb);
	}

	@Override
	public boolean getDeleteBusinessBean(int bId) {
		// TODO Auto-generated method stub
		return bbd.deleteBusinessBean(bId);
	}

	@Override
	public boolean getUpdateBusinessBeanByState(int bId, int bState) {
		// TODO Auto-generated method stub
		return bbd.updateBusinessBeanByState(bId, bState);
	}

	@Override
	public boolean getBatchDeleteBusinessBean(String sql) {
		// TODO Auto-generated method stub
		return bbd.batchDeleteBusinessBean(sql);
	}

	@Override
	public PageData<BusinessBean> getSelectAllBusinessBean(int page, int pageSize) {
		// TODO Auto-generated method stub
		return bbd.selectAllBusinessBean(page, pageSize);
	}

	/**
	 * 前台申请商家
	 */
	@Override
	public boolean getBusinessBeanAdd(BusinessBean c, int tenementId) {
		// TODO Auto-generated method stub
		return bbd.BusinessBeanAdd(c, tenementId);
	}

}
