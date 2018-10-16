package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.CostDao;
import com.feiyue.entiy.CostBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class CostDaoImpl implements CostDao{
    //增加
	@Override
	public boolean add(CostBean cost) {
		// TODO Auto-generated method stub
		return DBUtil.execute("INSERT into tb_cost VALUES(null,?,?,?,?,?,?)", 
				cost.getCostName(),cost.getUnitPrice(),cost.getRemarks(),cost.getCtId(),cost.getMunit(),cost.getExtent())>0;
	}
    //修改
	@Override
	public boolean update(CostBean cost) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_cost set costName=?,unitPrice=?,remarks=?,ctId=?,munit=?,extent=? WHERE  costId=? ",
				cost.getCostName(),cost.getUnitPrice(),cost.getRemarks(),cost.getCtId(),cost.getMunit(),cost.getExtent(),cost.getCostId())>0;
	}
    //删除
	@Override
	public boolean delete(int costId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("DELETE from tb_cost where costId=?", costId)>0;
	}
	//遍历
	@Override
	public List<CostBean> getCost() {
		// TODO Auto-generated method stub
		return (List<CostBean>) DBUtil.select("SELECT tb_cost.costId,tb_cost.costName,tb_cost.unitPrice,tb_cost.remarks,tb_costtype.ctName,tb_cost.munit,tb_cost.extent FROM tb_cost INNER JOIN tb_costtype ON tb_cost.ctId = tb_costtype.ctId", CostBean.class);
	}
	//分页
	@Override
	public PageData<CostBean> queryCostByPage(int page, int pageSize, String keywords) {
		// TODO Auto-generated method stub
		
		return null;
	}
	@Override
	public List<CostBean> selectCost(String keyword) {
		// TODO Auto-generated method stub
		
		return (List<CostBean>) DBUtil.select("SELECT * FROM tb_cost WHERE costName=? ", CostBean.class,"%"+keyword+"%");
	}

	@Override
	public boolean batchDeleteCost(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}
}
