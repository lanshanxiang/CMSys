package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.VillageInfoBeanDao;
import com.feiyue.dao.impl.VillageInfoBeanDaoImpl;
import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.service.VillageInfoBeanService;

public class VillageInfoBeanServiceImpl implements VillageInfoBeanService{
	VillageInfoBeanDao  vibd=new VillageInfoBeanDaoImpl();

	@Override
	public List<VillageInfoBean> getQueryVillageInfoBean() {
		// TODO Auto-generated method stub
		return vibd.queryVillageInfoBean();
	}

	@Override
	public boolean getAddVillageInfoBean(VillageInfoBean vb) {
		// TODO Auto-generated method stub
		return vibd.addVillageInfoBean(vb);
	}

	@Override
	public boolean getUpdateVillageInfoBean(VillageInfoBean vb) {
		// TODO Auto-generated method stub
		return vibd.updateVillageInfoBean(vb);
	}

	@Override
	public boolean getDeleteVillageInfoBean(int VillageId) {
		// TODO Auto-generated method stub
		return vibd.deleteVillageInfoBean(VillageId);
	}

	@Override
	public boolean getBatchDeleteVillageInfoBean(String sql) {
		// TODO Auto-generated method stub
		return vibd.batchDeleteTenementBean(sql);
	}

}
