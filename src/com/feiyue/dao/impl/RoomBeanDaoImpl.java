package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.RoomBeanDao;
import com.feiyue.entiy.RoomBean;
import com.feiyue.util.DBUtil;
/**
 * 房间管理的DAO实现类
 * @author Administrator
 *
 */
public class RoomBeanDaoImpl implements RoomBeanDao {
    //查询所有（房间表+楼房表）
	@Override
	public List<RoomBean> queryBuildingRoomBean() {
		// TODO Auto-generated method stub
		return (List<RoomBean>) DBUtil.select("select tb_room.roomId,tb_room.roomName,tb_building.buildingName,tb_room.unitNum,tb_room.eApartment,tb_room.buildArea,tb_room.usingArea,tb_room.face,tb_room.extent,tb_room.housetype,tb_room.lease from tb_room,tb_building where tb_room.buildingId=tb_building.buildingId", RoomBean.class);
	}
    //查询所有
	@Override
	public List<RoomBean> queryOnlyRoomBean() {
		// TODO Auto-generated method stub
		return (List<RoomBean>) DBUtil.select("select * from tb_room", RoomBean.class);
	}
    //增加
	@Override
	public boolean addRoomBean(RoomBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_room values (null,?,?,?,?,?,?,?,?,?,?)",
				rb.getRoomName(),rb.getBuildingId(),rb.getUnitNum(),rb.geteApartment(),rb.getBuildArea(),rb.getUsingArea(),rb.getFace(),rb.getExtent(),rb.getHousetype(),rb.getLease())>0;
	}
    //修改
	@Override
	public boolean updateRoomBean(RoomBean rb) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE  tb_room  SET roomName=?,buildingId=?,unitNum=?,eApartment=?,buildArea=?,usingArea=?,face=?,extent=?,housetype=?,lease=?"
		        +" where roomId=?",
		        rb.getRoomName(),rb.getBuildingId(),rb.getUnitNum(),rb.geteApartment(),rb.getBuildArea(),rb.getUsingArea(),rb.getFace(),rb.getExtent(),rb.getHousetype(),rb.getLease(),rb.getRoomId())>0;
	}
    //删除
	@Override
	public boolean deleteRoomBean(int roomId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_room where roomId=?", roomId)>0;
	}

}
