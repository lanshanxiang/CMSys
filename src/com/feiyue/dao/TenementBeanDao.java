package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.TenementBean;
/**
 * 
 * @author Administrator
 *
 */
public interface TenementBeanDao {

	//查询所有居民信息
	public List<TenementBean> queryTenementBean();
	//查询所有居民信息(查询住户迁入)
	public List<TenementBean> queryTenementBeanByIsY();
	//查询所有居民信息(查询住户正在办理)
	public List<TenementBean> queryTenementBeanByIsYN();
	//查询所有居民信息(查询住户迁出)
	public List<TenementBean> queryTenementBeanByIsN();
	//查询所有居民信息(查询住户已入驻)
	public List<TenementBean> queryTenementBeanByIsYR();
	//增加居民
	boolean insertTenementBean(TenementBean t);
	//删除居民信息
	boolean deleteTenementBean(int tenementId);
	//修改居民信息
	boolean updateTenementBean(TenementBean t);
	//通过状态修改居民信息
	boolean updateTenementBeanByState(int status,int tenementId);
	//批量删除
    public boolean batchDeleteTenementBean(String sql);
}
