package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.ReportBean;
import com.feiyue.entiy.TenementBean;



public interface ReportBeanDao {
	//查询所有方法(报修标+住户表)
    public List<ReportBean> queryReportTenementBean();
  //查询所有方法(报修标+住户表 通过isReport判断  查修理成功)
    public List<ReportBean> queryReportTenementBeanByIsY();
  //查询所有方法(报修标+住户表 通过isReport判断 查正在修理)
    public List<ReportBean> queryReportTenementBeanByIsYN();
    //查询所有方法(报修标+住户表 通过isReport判断 查修理失败)
    public List<ReportBean> queryReportTenementBeanByIsN();
    //查询所有方法(报修表)
    public List<ReportBean> queryOnlyReportBean();
    //查询所有方法(住户表)
    public List<TenementBean> queryOnlyTenementBean();
    //增加操作
    public boolean addReportBean(ReportBean rb);
    //修改操作
    public boolean updateReportBean(ReportBean rb);
    //修改操作(只修改修理状态)
    public boolean updateReportBeanByIsReport(int isReport,int reportId);
    //删除操作
    public boolean deleteReportBean(int reportId);
    //批量删除
    public boolean batchDeleteReportBean(String sql);
  //增加操作（当前时间）
    public boolean addReportBeanNow(ReportBean rb);
}
