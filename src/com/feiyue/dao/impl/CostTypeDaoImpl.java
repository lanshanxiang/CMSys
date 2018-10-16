package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.CostTypeDao;
import com.feiyue.entiy.CostTypeBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class CostTypeDaoImpl implements CostTypeDao{
    //增加
	@Override
	public boolean add(CostTypeBean costType) {
		// TODO Auto-generated method stub
		return DBUtil.execute("INSERT into tb_costtype VALUES(null,?,?)", 
				costType.getCtName(),costType.getExtent())>0;
	}
    //修改
	@Override
	public boolean update(CostTypeBean costType) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_costtype set ctName=?,extent=? WHERE  ctId=? ",
				costType.getCtName(),costType.getExtent(),costType.getCtId())>0;
	}
    //删除
	@Override
	public boolean delete(int ctId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("DELETE from tb_costtype where ctId=?", ctId)>0;
	}
	//遍历
	@Override
	public List<CostTypeBean> getCostType() {
		// TODO Auto-generated method stub
		return (List<CostTypeBean>) DBUtil.select("SELECT * FROM tb_costtype ", CostTypeBean.class);
	}
	//分页
	@Override
	public PageData<CostTypeBean> queryCostTypeByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		
		return null;
	}
	@Override
	public List<CostTypeBean> selectCostType(String keyword) {
		// TODO Auto-generated method stub
		
		return (List<CostTypeBean>) DBUtil.select("SELECT * FROM tb_costtype WHERE ctName=? ", CostTypeBean.class,"%"+keyword+"%");
	}
	@Override
	public boolean batchDeleteCostType(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}
}
