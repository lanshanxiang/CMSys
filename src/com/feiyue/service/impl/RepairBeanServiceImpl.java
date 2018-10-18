package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.RepairBeanDao;
import com.feiyue.dao.impl.RepairBeanDaoImpl;
import com.feiyue.entiy.RepairBean;
import com.feiyue.service.RepairBeanService;
import com.feiyue.util.PageData;

public class RepairBeanServiceImpl implements RepairBeanService {
	RepairBeanDao rbd=new RepairBeanDaoImpl();

	@Override
	public List<RepairBean> getQueryReportRepairBean() {
		// TODO Auto-generated method stub
		return rbd.queryRepairReportBean();
	}

	@Override
	public List<RepairBean> getQueryOnlyRepairBean() {
		// TODO Auto-generated method stub
		return rbd.queryOnlyRepairBean();
	}

	@Override
	public boolean getAddRepairBean(RepairBean rb) {
		// TODO Auto-generated method stub
		return rbd.addRepairBean(rb);
	}

	@Override
	public boolean getUpdateRepairBean(RepairBean rb) {
		// TODO Auto-generated method stub
		return rbd.updateRepairBean(rb);
	}

	@Override
	public boolean getDeleteRepairBean(int repairId) {
		// TODO Auto-generated method stub
		return rbd.deleteRepairBean(repairId);
	}

	@Override
	public boolean getBatchDeleteRepairBean(String sql) {
		// TODO Auto-generated method stub
		return rbd.batchDeleteRepairBean(sql);
	}

	@Override
	public PageData<RepairBean> getSelectAllRepairBean(int page, int pageSize) {
		// TODO Auto-generated method stub
		return rbd.selectAllRepairBean(page, pageSize);
	}

}
