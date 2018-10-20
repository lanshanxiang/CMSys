package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.VillageInfoBeanDao;
import com.feiyue.dao.impl.VillageInfoBeanDaoImpl;
import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.service.VillageInfoBeanService;
import com.feiyue.util.PageData;

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

	@Override
	public PageData<VillageInfoBean> getQueryVillageInfoBeanByPage(int page,int pageSize) {
		// TODO Auto-generated method stub
		return vibd.queryVillageInfoBeanByPage(page, pageSize);
	}

	@Override
	public boolean getVillageInfoBeanAdd(VillageInfoBean vb, int tenementId) {
		// TODO Auto-generated method stub
		return vibd.villageInfoBeanAdd(vb, tenementId);
	}

}
