package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.ParkingBean;
import com.feiyue.util.PageData;
/**
 * 自定义车位实体类
 * @author 李友惠
 *
 */
public interface ParkingBeanDao {
	//得到全部车位信息
	public List<ParkingBean> getAllParkingBean();
	//增加车位
	public boolean addParkingBean(ParkingBean pb);
    //修改指定车位
    public boolean updateParkingBean(ParkingBean pb);
    //删除指定车位
    public boolean deleteParkingBean(int pId);
    //批量删除
    public boolean batchDeleteParkingBean(String sql);
    //前台我的车位全部信息
  	public PageData<ParkingBean> queryParkingBean(int page,int pageSize,int tenementId);
    //前台查询车位全部信息
  	public PageData<ParkingBean> selectAllParkingBean(int page,int pageSize);

}
