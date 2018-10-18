package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.BusinessBean;
import com.feiyue.util.PageData;

public interface BusinessBeanDao {
	 //查询所有方法
    public List<BusinessBean> queryBusinessBean();
    //通过状态查询所有 0  已入驻
    public List<BusinessBean> queryBusinessBeanStateY();
    //通过状态查询所有 1  审核中
    public List<BusinessBean> queryBusinessBeanStateYN();
    //通过状态查询所有 2  入驻失败
    public List<BusinessBean> queryBusinessBeanStateN();
    //增加操作
    public boolean addBusinessBean(BusinessBean c);
    //修改操作
    public boolean updateBusinessBean(BusinessBean c);
    //通过id修改状态
    public boolean updateBusinessBeanByState(int bId,int bState);
    //删除操作
    public boolean deleteBusinessBean(int bId);
    //批量删除
    public boolean batchDeleteBusinessBean(String sql);
    
    public PageData<BusinessBean> selectAllBusinessBean(int page, int pageSize);
}
