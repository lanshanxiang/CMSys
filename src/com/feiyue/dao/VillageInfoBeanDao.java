package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.VillageInfoBean;


/**
 * 小区管理的DAO
 * @author Administrator
 *
 */
public interface VillageInfoBeanDao {
	//查询所有方法
    public List<VillageInfoBean> queryVillageInfoBean();
    //增加操作
    public boolean addVillageInfoBean(VillageInfoBean vb);
    //修改操作
    public boolean updateVillageInfoBean(VillageInfoBean vb);
    //删除操作
    public boolean deleteVillageInfoBean(int VillageId);
}
