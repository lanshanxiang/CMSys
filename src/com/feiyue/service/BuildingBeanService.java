package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.BuildingBean;

public interface BuildingBeanService {
	 //查询所有(楼房表+小区表)
    public List<BuildingBean> getQueryBuildingBean();
    //查询所有
    public List<BuildingBean> getQueryOnlyBuildingBean();
    //增加
    public boolean getAddBuildingBean(BuildingBean bb);
    //修改
    public boolean getUpdateBuildingBean(BuildingBean bb);
    //删除
    public boolean getDeleteBuildingBean(int buildingId);
  //批量删除
    public boolean getBatchDeleteBuildingBean(String sql);
}
