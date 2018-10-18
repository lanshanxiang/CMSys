package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.ReportBeanDao;
import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.util.DBUtil;

public class ReportBeanDaoImpl implements ReportBeanDao {

	@Override
	public List<ReportBean> queryReportTenementBean() {
		// TODO Auto-generated method stub
		return (List<ReportBean>) DBUtil.select("select tb_report.reportId,tb_report.equipment,tb_tenement.tenementName,tb_report.reportName,tb_report.reportTime,tb_report.isReport,tb_report.extent from tb_report,tb_tenement where tb_report.tenementId=tb_tenement.tenementId", ReportBean.class);
	}
	

	@Override
	public List<ReportBean> queryReportTenementBeanByIsY() {
		// TODO Auto-generated method stub
		return (List<ReportBean>) DBUtil.select("select tb_report.reportId,tb_report.equipment,tb_tenement.tenementName,tb_report.reportName,tb_report.reportTime,tb_report.isReport,tb_report.extent from tb_report,tb_tenement where tb_report.tenementId=tb_tenement.tenementId and tb_report.isReport=0", ReportBean.class);
	}

	@Override
	public List<ReportBean> queryReportTenementBeanByIsYN() {
		// TODO Auto-generated method stub
		return (List<ReportBean>) DBUtil.select("select tb_report.reportId,tb_report.equipment,tb_tenement.tenementName,tb_report.reportName,tb_report.reportTime,tb_report.isReport,tb_report.extent from tb_report,tb_tenement where tb_report.tenementId=tb_tenement.tenementId and tb_report.isReport=1", ReportBean.class);
	}

	@Override
	public List<ReportBean> queryReportTenementBeanByIsN() {
		// TODO Auto-generated method stub
		return (List<ReportBean>) DBUtil.select("select tb_report.reportId,tb_report.equipment,tb_tenement.tenementName,tb_report.reportName,tb_report.reportTime,tb_report.isReport,tb_report.extent from tb_report,tb_tenement where tb_report.tenementId=tb_tenement.tenementId and tb_report.isReport=2", ReportBean.class);
	}

	@Override
	public List<ReportBean> queryOnlyReportBean() {
		// TODO Auto-generated method stub
		return (List<ReportBean>) DBUtil.select("select * from tb_report", ReportBean.class);
	}

	@Override
	public boolean addReportBean(ReportBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_report values (null,?,?,?,?,1,?)",
				rb.getEquipment(),rb.getTenementId(),rb.getReportName(),rb.getReportTime(),rb.getExtent())>0;
	}

	@Override
	public boolean updateReportBean(ReportBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE  tb_report  SET equipment=?,tenementId=?,reportName=?,reportTime=?,isReport=?,extent=?"
		        +" where reportId=?",
		        rb.getEquipment(),rb.getTenementId(),rb.getReportName(),rb.getReportTime(),rb.getIsReport(),rb.getExtent(),rb.getReportId())>0;
	}

	@Override
	public boolean deleteReportBean(int reportId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_report where reportId=?", reportId)>0;
	}


	@Override
	public List<TenementBean> queryOnlyTenementBean() {
		// TODO Auto-generated method stub
		return (List<TenementBean>) DBUtil.select("select * from tb_tenement", TenementBean.class);
	}


	@Override
	public boolean updateReportBeanByIsReport(int isReport,int reportId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_report set isReport=? where reportId=?", isReport,reportId)>0;
	}


	@Override
	public boolean batchDeleteReportBean(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}


	@Override
	public boolean addReportBeanNow(ReportBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_report values (null,?,?,?,now(),1,?)",
				rb.getEquipment(),rb.getTenementId(),rb.getReportName(),rb.getExtent())>0;
	}


}
