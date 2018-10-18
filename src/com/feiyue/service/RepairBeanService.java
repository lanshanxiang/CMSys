package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.RepairBean;
import com.feiyue.entiy.ReportBean;
import com.feiyue.util.PageData;
/**
 * 维修记录接口
 * @author lsx
 *
 */
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
   //批量删除
    public boolean getBatchDeleteRepairBean(String sql);
    //前台查询所有维修记录
    public PageData<RepairBean> getSelectAllRepairBean(int page,int pageSize);
}
