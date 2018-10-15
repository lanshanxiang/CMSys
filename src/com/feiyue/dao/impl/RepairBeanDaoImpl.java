package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.RepairBeanDao;
import com.feiyue.entiy.RepairBean;
import com.feiyue.util.DBUtil;

public class RepairBeanDaoImpl implements RepairBeanDao {

	@Override
	public List<RepairBean> queryRepairReportBean() {
		// TODO Auto-generated method stub
		String sql="select tb_repair.repairId,tb_report.equipment,tb_report.reportName,tb_report.isReport,tb_repair.injureReason,tb_repair.repairUnit,tb_repair.repairTime,tb_repair.prid,tb_repair.payment,tb_repair.extent from tb_repair,tb_report where tb_repair.reportId=tb_report.reportId";
		return (List<RepairBean>) DBUtil.select(sql, RepairBean.class);
	}

	@Override
	public List<RepairBean> queryOnlyRepairBean() {
		// TODO Auto-generated method stub
		return (List<RepairBean>) DBUtil.select("select * from tb_repair", RepairBean.class);
	}

	@Override
	public boolean addRepairBean(RepairBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_repair values (null,?,?,?,?,?,?,?)",
				rb.getReportId(),rb.getInjureReason(),rb.getRepairUnit(),rb.getRepairTime(),rb.getPrid(),rb.getPayment(),rb.getExtent())>0;
	}

	@Override
	public boolean updateRepairBean(RepairBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE  tb_repair  SET reportId=?,injureReason=?,repairUnit=?,repairTime=?,prid=?,payment=?,extent=?"
		        +" where repairId=?",
		        rb.getReportId(),rb.getInjureReason(),rb.getRepairUnit(),rb.getRepairTime(),rb.getPrid(),rb.getPayment(),rb.getExtent(),rb.getRepairId())>0;
	}

	@Override
	public boolean deleteRepairBean(int repairId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_repair where repairId=?", repairId)>0;
	}

}
