package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.ReportBeanDao;
import com.feiyue.dao.impl.ReportBeanDaoImpl;
import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.service.ReportBeanService;

public class ReportBeanServiceImpl implements ReportBeanService {
	ReportBeanDao rtd=new ReportBeanDaoImpl();

	@Override
	public List<ReportBean> getQueryReportTenementBean() {
		// TODO Auto-generated method stub
		return rtd.queryReportTenementBean();
	}

	@Override
	public List<ReportBean> getQueryOnlyReportBean() {
		// TODO Auto-generated method stub
		return rtd.queryOnlyReportBean();
	}

	@Override
	public boolean getAddReportBean(ReportBean rb) {
		// TODO Auto-generated method stub
		return rtd.addReportBean(rb);
	}

	@Override
	public boolean getUpdateReportBean(ReportBean rb) {
		// TODO Auto-generated method stub
		return rtd.updateReportBean(rb);
	}

	@Override
	public boolean getDeleteReportBean(int reportId) {
		// TODO Auto-generated method stub
		return rtd.deleteReportBean(reportId);
	}

	@Override
	public List<ReportBean> getQueryReportTenementBeanIsY() {
		// TODO Auto-generated method stub
		return rtd.queryReportTenementBeanByIsY();
	}

	@Override
	public List<ReportBean> getQueryReportTenementBeanIsYN() {
		// TODO Auto-generated method stub
		return rtd.queryReportTenementBeanByIsYN();
	}

	@Override
	public List<ReportBean> getQueryReportTenementBeanIsN() {
		// TODO Auto-generated method stub
		return rtd.queryReportTenementBeanByIsN();
	}

	@Override
	public List<TenementBean> getQueryOnlyTenementBean() {
		// TODO Auto-generated method stub
		return rtd.queryOnlyTenementBean();
	}

	@Override
	public boolean getUpdateReportBeanByIsReport(int isReport,int reportId) {
		// TODO Auto-generated method stub
		return rtd.updateReportBeanByIsReport(isReport,reportId);
	}

	@Override
	public boolean getBatchDeleteReportBean(String sql) {
		// TODO Auto-generated method stub
		return rtd.batchDeleteReportBean(sql);
	}

}
