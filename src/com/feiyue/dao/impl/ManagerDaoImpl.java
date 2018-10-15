package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.ManagerDao;
import com.feiyue.entiy.ManagerBean;
import com.feiyue.util.DBUtil;

/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月13日 上午11:11:18 
 *  
 */
public class ManagerDaoImpl implements ManagerDao {

	@Override
	public ManagerBean queryManager(String mName, String mPwd) {
		// TODO Auto-generated method stub
		String sql = "select  * from tb_manager where mName=? and mPwd=?";
		List<ManagerBean> list = (List<ManagerBean>) DBUtil.select(sql, ManagerBean.class, mName, mPwd);

		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
