package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.BuildingBean;
/**
 * 楼房管理的DAO
 * @author Administrator
 *
 */
public interface BuildingBeanDao {
	//查询所有方法(楼房表+小区表)
    public List<BuildingBean> queryBuildingBean();
    //查询所有方法(楼房表)
    public List<BuildingBean> queryOnlyBuildingBean();
    //增加操作
    public boolean addBuildingBean(BuildingBean bb);
    //修改操作
    public boolean updateBuildingBean(BuildingBean bb);
    //删除操作
    public boolean deleteBuildingBean(int buildingId);
}
