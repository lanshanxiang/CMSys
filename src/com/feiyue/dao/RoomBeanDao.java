package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.Lost;
import com.feiyue.entiy.RoomBean;
/**
 * 房间管理的DAO
 * @author lsx
 *
 */
import com.feiyue.util.PageData;
public interface RoomBeanDao {
	//查询所有方法(楼房表+房屋表)
    public List<RoomBean> queryBuildingRoomBean();
    //查询所有方法(房屋表)
    public List<RoomBean> queryOnlyRoomBean();
    //增加操作
    public boolean addRoomBean(RoomBean rb);
    //修改操作
    public boolean updateRoomBean(RoomBean rb);
    //删除操作
    public boolean deleteRoomBean(int roomId);
    //批量删除
    public boolean batchDeleteRoomBean(String sql);
    
    //前台查询房屋信息
    PageData<RoomBean> selectAllRoomBean(int page,int pageSize);
    //前台用户申请住房
    public boolean RoomBeanAdd(RoomBean rb,int tenementId);
}
