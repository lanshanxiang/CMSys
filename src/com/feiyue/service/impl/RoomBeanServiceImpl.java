package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.RoomBeanDao;
import com.feiyue.dao.impl.RoomBeanDaoImpl;
import com.feiyue.entiy.RoomBean;
import com.feiyue.service.RoomBeanService;
import com.feiyue.util.PageData;
/**
 * 房屋信息服务类
 * @author lansh
 *
 */
public class RoomBeanServiceImpl implements RoomBeanService  {
	RoomBeanDao rbd=new RoomBeanDaoImpl();

	@Override
	public List<RoomBean> getQueryRoomBuildingBean() {
		// TODO Auto-generated method stub
		return rbd.queryBuildingRoomBean();
	}

	@Override
	public List<RoomBean> getQueryOnlyRoomBean() {
		// TODO Auto-generated method stub
		return rbd.queryOnlyRoomBean();
	}

	@Override
	public boolean getAddRoomBean(RoomBean rb) {
		// TODO Auto-generated method stub
		return rbd.addRoomBean(rb);
	}

	@Override
	public boolean getUpdateRoomBean(RoomBean rb) {
		// TODO Auto-generated method stub
		return rbd.updateRoomBean(rb);
	}

	@Override
	public boolean getDeleteRoomBean(int roomId) {
		// TODO Auto-generated method stub
		return rbd.deleteRoomBean(roomId);
	}

	@Override
	public boolean getBatchDeleteRoomBean(String sql) {
		// TODO Auto-generated method stub
		return rbd.batchDeleteRoomBean(sql);
	}

	@Override
	public PageData<RoomBean> getselectAllRoomBean(int page, int pageSize) {
		// TODO Auto-generated method stub
		return rbd.selectAllRoomBean(page, pageSize);
	}

}
