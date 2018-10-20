package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.RoomBean;
import com.feiyue.util.PageData;

public interface RoomBeanService {
	 //查询所有(楼房表+房屋表)
    public List<RoomBean> getQueryRoomBuildingBean();
    //查询所有
    public List<RoomBean> getQueryOnlyRoomBean();
    //增加
    public boolean getAddRoomBean(RoomBean rb);
    //修改
    public boolean getUpdateRoomBean(RoomBean rb);
    //删除
    public boolean getDeleteRoomBean(int roomId);
  //批量删除
    public boolean getBatchDeleteRoomBean(String sql);
    //前台查询所有房屋信息
    public PageData<RoomBean> getselectAllRoomBean(int page,int pageSize);
   //前台申请房屋信息
    public boolean getRoomBeanAdd(RoomBean rb,int tenementId);
}
