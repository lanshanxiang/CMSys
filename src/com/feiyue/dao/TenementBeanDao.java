package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.TenementBean;

public interface TenementBeanDao {

	//查询所有居民信息
	public List<TenementBean> queryTenementBean();
	//增加居民
	boolean insertTenementBean(TenementBean t);
	//删除居民信息
	boolean deleteTenementBean(int tenementId);
	//修改居民信息
	boolean updateTenementBean(TenementBean t);
}
