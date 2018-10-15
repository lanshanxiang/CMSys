package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.RoomBean;
import com.feiyue.entiy.TenementBean;

public interface ReportBeanService {
	 //查询所有(报修表+住户表)
    public List<ReportBean> getQueryReportTenementBean();
    //查询所有(报修表+住户表  查修理成功的)
    public List<ReportBean> getQueryReportTenementBeanIsY();
    //查询所有(报修表+住户表 查正在修理)
    public List<ReportBean> getQueryReportTenementBeanIsYN();
    //查询所有(报修表+住户表 查修理失败)
    public List<ReportBean> getQueryReportTenementBeanIsN();
    //查询所有
    public List<ReportBean> getQueryOnlyReportBean();
    //查询所有(住户表)
    public List<TenementBean> getQueryOnlyTenementBean();
    //增加
    public boolean getAddReportBean(ReportBean rb);
    //修改
    public boolean getUpdateReportBean(ReportBean rb);
    //删除
    public boolean getDeleteReportBean(int reportId);
    //修改（只修改维修状态）
    public boolean getUpdateReportBeanByIsReport(int isReport,int reportId);
}
