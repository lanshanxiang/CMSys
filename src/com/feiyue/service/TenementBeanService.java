package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.TenementBean;

public interface TenementBeanService {
	List<TenementBean> getTenementBean();
	
	boolean getInsertTenementBean(TenementBean t);
	
	boolean getDeleteTenementBean(int tenementId);
	
	boolean updateTenementBean(TenementBean t);
}
