package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.BusinessBeanDao;
import com.feiyue.dao.impl.BusinessBeanDaoImpl;
import com.feiyue.entiy.BusinessBean;
import com.feiyue.service.BusinessBeanService;

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

}
