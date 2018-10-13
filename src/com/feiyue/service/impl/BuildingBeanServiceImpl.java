package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.BuildingBeanDao;
import com.feiyue.dao.impl.BuildingBeanDaoImpl;
import com.feiyue.entiy.BuildingBean;
import com.feiyue.service.BuildingBeanService;

public class BuildingBeanServiceImpl implements BuildingBeanService {
	BuildingBeanDao bbd=new BuildingBeanDaoImpl();

	@Override
	public List<BuildingBean> getQueryBuildingBean() {
		// TODO Auto-generated method stub
		return bbd.queryBuildingBean();
	}

	@Override
	public boolean getAddBuildingBean(BuildingBean bb) {
		// TODO Auto-generated method stub
		return bbd.addBuildingBean(bb);
	}

	@Override
	public boolean getUpdateBuildingBean(BuildingBean bb) {
		// TODO Auto-generated method stub
		return bbd.updateBuildingBean(bb);
	}

	@Override
	public boolean getDeleteBuildingBean(int buildingId) {
		// TODO Auto-generated method stub
		return bbd.deleteBuildingBean(buildingId);
	}

	@Override
	public List<BuildingBean> getQueryOnlyBuildingBean() {
		// TODO Auto-generated method stub
		return bbd.queryOnlyBuildingBean();
	}

}
