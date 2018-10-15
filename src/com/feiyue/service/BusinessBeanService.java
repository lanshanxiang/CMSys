package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.BusinessBean;

public interface BusinessBeanService {
	//查询所有方法
    public List<BusinessBean> getQueryBusinessBean();
    //通过状态查询所有 0  已入驻
    public List<BusinessBean> getQueryBusinessBeanStateY();
    //通过状态查询所有 1  审核中
    public List<BusinessBean> getQueryBusinessBeanStateYN();
    //通过状态查询所有 2  入驻失败
    public List<BusinessBean> getQueryBusinessBeanStateN();
    //增加操作
    public boolean getAddBusinessBean(BusinessBean c);
    //修改操作
    public boolean getUpdateBusinessBean(BusinessBean c);
    //通过id修改状态
    public boolean getUpdateBusinessBeanByState(int bId,int bState);
    //删除操作
    public boolean getDeleteBusinessBean(int bId);
}
