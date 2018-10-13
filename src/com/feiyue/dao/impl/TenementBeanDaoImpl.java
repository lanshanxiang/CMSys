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
		String sql = "INSERT INTO tb_tenement VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1, ?, ?)";
		return DBUtil.execute(sql, t.getTenementName(), t.getSex(), t.getAunit(), t.getIdCard(), t.getMobilePhone(),
				t.getEmail(), t.getAreStay(), t.getCreateBy(), t.getNationality(), t.getHomeAddress(),
				t.getResidenceType(), t.getMaritalStatus(), t.getStatus(), t.getRemark()) > 0;
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
		String sql = "UPDATE tb_tenement SET tenementName=?,sex=?,aunit=?,idCard=?,mobilePhone=?,email=?,areStay=?,createBy=?,nationality=?,homeAddress=?,residenceType=?,maritalStatus=?,userId=?,status=?,remark=? WHERE tenementId=?";
		return DBUtil.execute(sql,t.getTenementName(),t.getSex(),t.getAunit(),t.getIdCard(),t.getMobilePhone(),t.getEmail(),t.getAreStay(),t.getCreateBy(),t.getNationality(),t.getHomeAddress(),t.getResidenceType(),t.getMaritalStatus(),t.getUserId(),t.getStatus(),t.getRemark(),t.getTenementId()) > 0;
	}

}
