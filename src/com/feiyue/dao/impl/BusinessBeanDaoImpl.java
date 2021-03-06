package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.BusinessBeanDao;
import com.feiyue.entiy.BusinessBean;
import com.feiyue.util.DBUtil;
import com.feiyue.util.PageData;

public class BusinessBeanDaoImpl implements BusinessBeanDao {

	@Override
	public List<BusinessBean> queryBusinessBean() {
		// TODO Auto-generated method stub
		return (List<BusinessBean>) DBUtil.select("select * from tb_business", BusinessBean.class);
	}

	@Override
	public boolean addBusinessBean(BusinessBean c) {
		// TODO Auto-generated method stub
		return DBUtil.execute("insert into tb_business values(null,?,?,?,1,now())",c.getbName(),c.getbPeopleName(),c.getbTel())>0;
	}

	@Override
	public boolean updateBusinessBean(BusinessBean c) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_business set bName=?,bPeopleName=?,bTel=?,bDate=? where bId=?", c.getbName(),c.getbPeopleName(),c.getbTel(),c.getbDate(),c.getbId())>0;
	}

	@Override
	public boolean deleteBusinessBean(int bId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_business where bId=?", bId)>0;
	}

	@Override
	public List<BusinessBean> queryBusinessBeanStateY() {
		// TODO Auto-generated method stub
		return (List<BusinessBean>) DBUtil.select("select * from tb_business where bState=0", BusinessBean.class);
	}

	@Override
	public List<BusinessBean> queryBusinessBeanStateYN() {
		// TODO Auto-generated method stub
		return (List<BusinessBean>) DBUtil.select("select * from tb_business where bState=1", BusinessBean.class);
	}

	@Override
	public List<BusinessBean> queryBusinessBeanStateN() {
		// TODO Auto-generated method stub
		return (List<BusinessBean>) DBUtil.select("select * from tb_business where bState=2", BusinessBean.class);
	}

	@Override
	public boolean updateBusinessBeanByState(int bId, int bState) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_business set bState=? where bId=?", bState,bId)>0;
	}

	@Override
	public boolean batchDeleteBusinessBean(String sql) {
		// TODO Auto-generated method stub
		return DBUtil.execute(sql)>0;
	}

	@Override
	public PageData<BusinessBean> selectAllBusinessBean(int page, int pageSize) {
		// TODO Auto-generated method stub
		String sql="select * from tb_business where bState = 0";
		return DBUtil.getPage(sql,page, pageSize, BusinessBean.class);
	}

	/**
	 * 前台申请我的商家
	 */
	@Override
	public boolean BusinessBeanAdd(BusinessBean c, int tenementId) {
		// TODO Auto-generated method stub
		String sql = "";
		return DBUtil.execute(sql)>0;
	}

}
