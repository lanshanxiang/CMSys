package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.TenementBean;

public interface TenementBeanService {
	List<TenementBean> getTenementBean();

	// 查询所有居民信息(查询住户迁入)
	public List<TenementBean> getQueryTenementBeanByIsY();

	// 查询所有居民信息(查询住户正在办理)
	public List<TenementBean> getQueryTenementBeanByIsYN();

	// 查询所有居民信息(查询住户迁出)
	public List<TenementBean> getQueryTenementBeanByIsN();

	// 查询所有居民信息(查询住户已入驻)
	public List<TenementBean> getQueryTenementBeanByIsYR();

	boolean getInsertTenementBean(TenementBean t);
	
	boolean getDeleteTenementBean(int tenementId);
	//修改居民信息
	boolean updateTenementBean(TenementBean t);
	//修改居民信息（通过状态）
	boolean updateTenementBeanByStatus(int status,int tenementId);
}
