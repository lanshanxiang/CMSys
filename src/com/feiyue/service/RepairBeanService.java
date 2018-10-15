package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.RepairBean;
import com.feiyue.entiy.ReportBean;

public interface RepairBeanService {
	 //查询所有(报修表+维修表表)
    public List<RepairBean> getQueryReportRepairBean();
	//查询所有
    public List<RepairBean> getQueryOnlyRepairBean();
	//增加
    public boolean getAddRepairBean(RepairBean rb);
    //修改
    public boolean getUpdateRepairBean(RepairBean rb);
    //删除
    public boolean getDeleteRepairBean(int repairId);
}
