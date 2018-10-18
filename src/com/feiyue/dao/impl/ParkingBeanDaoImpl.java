package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.ParkingBeanDao;
import com.feiyue.entiy.ParkingBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;
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

	@Override
	public boolean batchDeleteParkingBean(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}
	/**
	 * 显示户主的全部车位
	 */
	@Override
	public PageData<ParkingBean> queryParkingBean(int page, int pageSize, int tenementId) {
		// TODO Auto-generated method stub
		String sql = "SELECT tb_parkings.parkingId, tb_villageinfo.villageName, tb_parkings.area, tb_parksrtype.parkSRName, tb_parkings.timeEnd FROM tb_parkings INNER JOIN tb_tenement ON tb_parkings.tenementId = tb_tenement.tenementId INNER JOIN tb_villageinfo ON tb_parkings.villageId = tb_villageinfo.villageId INNER JOIN tb_parksrtype ON tb_parkings.parkSRId = tb_parksrtype.parkSRId where tb_parkings.tenementId=?";
		return DBUtil.getPage(sql, page, pageSize, ParkingBean.class,tenementId);
	}

	/**
	 * 前台查询所有车辆
	 */
	@Override
	public PageData<ParkingBean> selectAllParkingBean(int page, int pageSize) {
		// TODO Auto-generated method stub
		String sql="SELECT tb_parktype.ptName ,tb_parkings.parkingId, tb_villageinfo.villageName, tb_parkings.area, tb_parksrtype.parkSRName, tb_parkings.timeEnd FROM tb_parkings INNER JOIN tb_tenement ON tb_parkings.tenementId = tb_tenement.tenementId INNER JOIN tb_villageinfo ON tb_parkings.villageId = tb_villageinfo.villageId INNER JOIN tb_parksrtype ON tb_parkings.parkSRId = tb_parksrtype.parkSRId INNER JOIN tb_parktype ON tb_parktype.ptId = tb_parktype.ptId";
		return DBUtil.getPage(sql, page, pageSize, ParkingBean.class);
	}

}
