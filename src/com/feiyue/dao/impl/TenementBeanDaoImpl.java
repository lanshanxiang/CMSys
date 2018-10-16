package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.TenementBeanDao;
import com.feiyue.entiy.RoomBean;
import com.feiyue.entiy.TenementBean;
import com.feiyue.entiy.UserBean;
import com.feiyue.util.DBUtil;

public class TenementBeanDaoImpl implements TenementBeanDao {

	@Override
	public List<TenementBean> queryTenementBean() {
		// TODO Auto-generated method stub
		String sql = "select * from tb_tenement";
		return (List<TenementBean>) DBUtil.select(sql, TenementBean.class);
	}

	@Override
	public boolean insertTenementBean(TenementBean t) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO tb_tenement VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1,?)";
		return DBUtil.execute(sql, t.getTenementName(),t.getSex(),t.getAunit(),t.getIdCard(),t.getMobilePhone(),
				t.getEmail(),t.getAreStay(),t.getNationality(),t.getHomeAddress(),
				t.getResidenceType(),t.getMaritalStatus(),t.getUserId(),t.getRemark()) > 0;
	}

	@Override
	public boolean deleteTenementBean(int tenementId) {
		// TODO Auto-generated method stub
		String sql = "delete from tb_tenement where tenementId=?";
		return DBUtil.execute(sql, tenementId) > 0;
	}

	@Override
	public boolean updateTenementBean(TenementBean t) {
		// TODO Auto-generated method stub
		String sql = "UPDATE tb_tenement SET tenementName=?,sex=?,aunit=?,idCard=?,mobilePhone=?,email=?,areStay=?,nationality=?,homeAddress=?,residenceType=?,maritalStatus=?,userId=?,remark=? WHERE tenementId=?";
		return DBUtil.execute(sql,t.getTenementName(),t.getSex(),t.getAunit(),t.getIdCard(),t.getMobilePhone(),t.getEmail(),t.getAreStay(),t.getNationality(),t.getHomeAddress(),t.getResidenceType(),t.getMaritalStatus(),t.getUserId(),t.getRemark(),t.getTenementId()) > 0;
	}

	@Override
	public List<TenementBean> queryTenementBeanByIsY() {
		// TODO Auto-generated method stub
		String sql = "select * from tb_tenement where status=0";
		return (List<TenementBean>) DBUtil.select(sql, TenementBean.class);
	}

	@Override
	public List<TenementBean> queryTenementBeanByIsYN() {
		// TODO Auto-generated method stub
		String sql = "select * from tb_tenement where status=1";
		return (List<TenementBean>) DBUtil.select(sql, TenementBean.class);
	}

	@Override
	public List<TenementBean> queryTenementBeanByIsN() {
		// TODO Auto-generated method stub
		String sql = "select * from tb_tenement where status=2";
		return (List<TenementBean>) DBUtil.select(sql, TenementBean.class);
	}

	@Override
	public List<TenementBean> queryTenementBeanByIsYR() {
		// TODO Auto-generated method stub
		String sql = "select * from tb_tenement where status=3";
		return (List<TenementBean>) DBUtil.select(sql, TenementBean.class);
	}

	@Override
	public boolean updateTenementBeanByState(int status,int tenementId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_tenement set status=? where tenementId=?", status,tenementId)>0;
	}

}
