package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.ParkingBeanDao;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.util.DBUtil;
/**
 * 
	PardingSpaceDao接口的实现类
 * @author 李友惠
 *
 */
public class ParkingBeanDaoImpl implements ParkingBeanDao {
	/**
	 * 得到所有车位信息
	 */
	@Override
	public List<ParkingBean> getAllParkingBean() {
		// TODO Auto-generated method stub
		String sql="select p.parkingId,p.parkingNo,pt.ptName,r.roomName,p.carNum,p.carType,p.money,p.timeStart,p.timeEnd,pst.parkSRName ,p.remarks from tb_parking as p,tb_parksrtype as pst,tb_parktype as pt,tb_room as r where p.parkSRId=pst.parkSRId and p.ptId=pt.ptId and p.roomId=r.RoomId";
		List<ParkingBean> list = (List<ParkingBean>) DBUtil.select(sql, ParkingBean.class);
		if(list!=null && list.size()>0){
            return list;
        }else{
            return null;
        }
	}

	@Override
	public boolean addParkingBean(ParkingBean ps) {
		// TODO Auto-generated method stub
		String sql="INSERT INTO tb_parking (parkingNo, ptId, roomId, carNum, carType, money, timeStart, timeEnd, parkSRId,remarks) VALUES (?,?,?,?,?,?,?,?,?,?)";
		return DBUtil.execute(sql,ps.getParkingNo(),ps.getPtId(),ps.getRoomId(),ps.getCarNum(),ps.getCarType(),ps.getMoney(),ps.getTimeStart(),ps.getTimeEnd(),ps.getParkSRId(),ps.getRemarks())>0;
	}

	@Override
	public boolean updateParkingBean(ParkingBean ps) {
		// TODO Auto-generated method stub
		String sql = "UPDATE tb_parking SET parkingNo=?, ptId=?, roomId=?, carNum=?, carType=?, money=?, timeStart=?, timeEnd=?, parkSRId=?, remarks=? WHERE parkingId=?";
		return DBUtil.execute(sql,ps.getParkingNo(),ps.getPtId(),ps.getRoomId(),ps.getCarNum(),ps.getCarType(),ps.getMoney(),ps.getTimeStart(),ps.getTimeEnd(),ps.getParkSRId(),ps.getRemarks(),ps.getParkingId())>0;
	}

	@Override
	public boolean deleteParkingBean(int pId) {
		// TODO Auto-generated method stub
		String sql="DELETE FROM tb_parking WHERE parkingId=?";
		return DBUtil.execute(sql, pId)>0;
	}

}
