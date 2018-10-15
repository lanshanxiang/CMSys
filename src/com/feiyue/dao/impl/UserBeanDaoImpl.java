package com.feiyue.dao.impl;

import java.util.List;

import com.feiyue.dao.UserBeanDao;
import com.feiyue.entiy.UserBean;
import com.feiyue.util.DBUtil;

public class UserBeanDaoImpl implements UserBeanDao {

	@Override
	public List<UserBean> queryUser() {
		// TODO Auto-generated method stub
		return (List<UserBean>) DBUtil.select("select * from tb_user", UserBean.class);
	}

}
