package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.util.PageData;



public interface VillageInfoBeanService {
	 //查询所有
    public List<VillageInfoBean> getQueryVillageInfoBean();
    //查询所有+分页
    public PageData<VillageInfoBean> getQueryVillageInfoBeanByPage(int page,int pageSize);
    //增加
    public boolean getAddVillageInfoBean(VillageInfoBean vb);
    //修改
    public boolean getUpdateVillageInfoBean(VillageInfoBean vb);
    //删除
    public boolean getDeleteVillageInfoBean(int VillageId);
  //批量删除
    public boolean getBatchDeleteVillageInfoBean(String sql);
    //前台申请小区
    public boolean getVillageInfoBeanAdd(VillageInfoBean vb,int tenementId);
}
