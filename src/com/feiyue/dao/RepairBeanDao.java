package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.Lost;
import com.feiyue.entiy.RepairBean;
import com.feiyue.util.PageData;
/**
 * 
 * @author Administrator
 *
 */


public interface RepairBeanDao {
	//查询所有方法(报修标+维修记录表)
    public List<RepairBean> queryRepairReportBean();
    //后台查询所有方法(维修记录表)
    public List<RepairBean> queryOnlyRepairBean();
	//增加操作
    public boolean addRepairBean(RepairBean rb);
    //修改操作
    public boolean updateRepairBean(RepairBean rb);
    //删除操作
    public boolean deleteRepairBean(int repairId);
  //批量删除
    public boolean batchDeleteRepairBean(String sql);
    
    //前台查询所有维修记录
    public PageData<RepairBean> selectAllRepairBean(int page, int pageSize);
}
