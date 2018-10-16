package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.BuildingBeanDao;
import com.feiyue.entiy.BuildingBean;
import com.feiyue.util.DBUtil;
/**
 * 楼房管理的DAO实现类
 * @author Administrator
 *
 */
public class BuildingBeanDaoImpl implements BuildingBeanDao {
    //查询所有 （楼房表+小区表）
	@Override
	public List<BuildingBean> queryBuildingBean() {
		// TODO Auto-generated method stub
		return (List<BuildingBean>) DBUtil.select("select tb_building.buildingId,tb_building.buildingName,tb_building.face,tb_building.buildArea,tb_building.floorNum,tb_building.height,tb_building.buildTime,tb_building.type,tb_villageinfo.villageName,tb_building.extent from tb_building,tb_villageinfo where tb_building.villageId=tb_villageinfo.villageId", BuildingBean.class);
	}
	//增加
	@Override
	public boolean addBuildingBean(BuildingBean bb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_building  (buildingId,buildingName,face,buildArea,floorNum,height,buildTime,type,villageId,extent ) values (null,?,?,?,?,?,?,?,?,? )",
		        bb.getBuildingName(),bb.getFace(),bb.getBuildArea(),bb.getFloorNum(),bb.getHeight(),bb.getBuildTime(),bb.getType(),bb.getVillageId(),bb.getExtent())>0;
	}
    //修改
	@Override
	public boolean updateBuildingBean(BuildingBean bb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE  tb_building  SET buildingName=?,face=?,buildArea=?,floorNum=?,height=?,buildTime=?,type=?,villageId=?,extent=?"
		        +" where buildingId=?",
		        bb.getBuildingName(),bb.getFace(),bb.getBuildArea(),bb.getFloorNum(),bb.getHeight(),bb.getBuildTime(),bb.getType(),bb.getVillageId(),bb.getExtent(),bb.getBuildingId())>0;
	}
    //删除
	@Override
	public boolean deleteBuildingBean(int buildingId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_building where buildingId=?", buildingId)>0;
	}
    //查询所有
	@Override
	public List<BuildingBean> queryOnlyBuildingBean() {
		// TODO Auto-generated method stub
		return (List<BuildingBean>) DBUtil.select("select * from tb_building", BuildingBean.class);
	}
	@Override
	public boolean batchDeleteBuildingBean(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}

}
