package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.util.PageData;


/**
 * 小区管理的DAO
 * @author Administrator
 *
 */
public interface VillageInfoBeanDao {
	//查询所有方法
    public List<VillageInfoBean> queryVillageInfoBean();
    //查询所有小区+分页
    public PageData<VillageInfoBean> queryVillageInfoBeanByPage(int page,int pageSize);
    //增加操作
    public boolean addVillageInfoBean(VillageInfoBean vb);
    //修改操作
    public boolean updateVillageInfoBean(VillageInfoBean vb);
    //删除操作
    public boolean deleteVillageInfoBean(int VillageId);
   //批量删除
    public boolean batchDeleteTenementBean(String sql);
   //前台申请小区
    public boolean villageInfoBeanAdd(VillageInfoBean vb,int tenementId);
}
