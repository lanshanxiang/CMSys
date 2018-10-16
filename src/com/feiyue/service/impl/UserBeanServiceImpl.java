package com.feiyue.service.impl;

import java.util.List;

import com.feiyue.dao.UserBeanDao;
import com.feiyue.dao.impl.UserBeanDaoImpl;
import com.feiyue.entiy.UserBean;
import com.feiyue.service.UserBeanService;

public class UserBeanServiceImpl implements UserBeanService {
	UserBeanDao ubd=new UserBeanDaoImpl();

	@Override
	public List<UserBean> getQueryUser() {
		// TODO Auto-generated method stub
		return ubd.queryUser();
	}

	@Override
	public UserBean getLogin(String register, String userPwd) {
		// TODO Auto-generated method stub
		return ubd.login(register, userPwd);
	}

	@Override
	public boolean getUpdateUser(UserBean ub) {
		// TODO Auto-generated method stub
		return ubd.updateUser(ub);
	}

	@Override
	public boolean getDeleteUser(int userId) {
		// TODO Auto-generated method stub
		return ubd.deleteUser(userId);
	}

	@Override
	public boolean getStopUser(int state, int userId) {
		// TODO Auto-generated method stub
		return ubd.stopUser(state, userId);
	}

}
