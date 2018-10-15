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
		String sql="select p.parkingId,p.parkingNo,pt.ptId,pt.ptName,v.villageId,v.villageName,pst.parkSRId,pst.parkSRName ,p.area,p.remarks from tb_parkings as p,tb_parksrtype as pst,tb_parktype as pt,tb_villageinfo as v where p.parkSRId=pst.parkSRId and p.ptId=pt.ptId and p.villageId=v.villageId";
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
		String sql="INSERT INTO tb_parkings (parkingNo, ptId, villageId, parkSRId,area,remarks) VALUES (?,?,?,?,?,?)";
		return DBUtil.execute(sql,ps.getParkingNo(),ps.getPtId(),ps.getVillageId(),ps.getParkSRId(),ps.getArea(),ps.getRemarks())>0;
	}

	@Override
	public boolean updateParkingBean(ParkingBean ps) {
		// TODO Auto-generated method stub
		String sql = "UPDATE tb_parkings SET parkingNo=?, ptId=?, villageId=?, parkSRId=?,area=?, remarks=? WHERE parkingId=?";
		return DBUtil.execute(sql,ps.getParkingNo(),ps.getPtId(),ps.getVillageId(),ps.getParkSRId(),ps.getArea(),ps.getRemarks(),ps.getParkingId())>0;
	}

	@Override
	public boolean deleteParkingBean(int pId) {
		// TODO Auto-generated method stub
		String sql="DELETE FROM tb_parkings WHERE parkingId=?";
		return DBUtil.execute(sql, pId)>0;
	}

}
