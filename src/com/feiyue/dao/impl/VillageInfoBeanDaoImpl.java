package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.VillageInfoBeanDao;
import com.feiyue.entiy.VillageInfoBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;
/**
 * 小区管理的DAO 实现类
 * @author Administrator
 *
 */
public class VillageInfoBeanDaoImpl implements VillageInfoBeanDao {
    //查询所有
	@Override
	public List<VillageInfoBean> queryVillageInfoBean() {
		// TODO Auto-generated method stub
		return (List<VillageInfoBean>) DBUtil.select("select * from tb_villageinfo", VillageInfoBean.class);
	}
    //增加
	@Override
	public boolean addVillageInfoBean(VillageInfoBean vb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_villageinfo  (villageId,villageName,linkman,setUpTime,phone,mobilePhone,floorArea,buildingArea,garageArea,stallNum,greenArea,location,introduction,extent) values (null,?,?,?,?,?,?,?,?,?,?,?,?,?)",
		        vb.getVillageName(),vb.getLinkman(),vb.getSetUpTime(),vb.getPhone(),vb.getMobilePhone(),vb.getFloorArea(),vb.getBuildingArea(),vb.getGarageArea(),vb.getStallNum(),vb.getGreenArea(),vb.getLocation(),vb.getIntroduction(),vb.getExtent())>0;
	}
    //修改
	@Override
	public boolean updateVillageInfoBean(VillageInfoBean vb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE  tb_villageinfo  SET villageName=?,linkman=?,setUpTime=?,phone=?,mobilePhone=?,floorArea=?,buildingArea=?,garageArea=?,stallNum=?,greenArea=?,location=?,introduction=?,extent=?"
		        +" where villageId=?",
		        vb.getVillageName(),vb.getLinkman(),vb.getSetUpTime(),vb.getPhone(),vb.getMobilePhone(),vb.getFloorArea(),vb.getBuildingArea(),vb.getGarageArea(),vb.getStallNum(),vb.getGreenArea(),vb.getLocation(),vb.getIntroduction(),vb.getExtent(),vb.getVillageId())>0;
	}
    //删除
	@Override
	public boolean deleteVillageInfoBean(int VillageId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_villageinfo where villageId=?", VillageId)>0;
	}
	@Override
	public boolean batchDeleteTenementBean(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}
	@Override
	public PageData<VillageInfoBean> queryVillageInfoBeanByPage(int page, int pageSize) {
		// TODO Auto-generated method stub
		return DBUtil.getPage("select * from tb_villageinfo ORDER BY tb_villageinfo.villageId DESC", page, pageSize, VillageInfoBean.class);
	}
	/**
	 * 前台申请小区
	 */
	@Override
	public boolean villageInfoBeanAdd(VillageInfoBean vb,int tenementId) {
		// TODO Auto-generated method stub
		String sql = "";
		return DBUtil.execute(sql)>0;
	}

}
