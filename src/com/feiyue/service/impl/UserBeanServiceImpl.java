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

	@Override
	public boolean addUser(UserBean user) {
		// TODO Auto-generated method stub
		return ubd.addUser(user);
	}
/**
 * 判断指定账号的用户是否已存在
 */
	@Override
	public boolean isHaveUserByRegister(String register) {
		// TODO Auto-generated method stub
		if(ubd.getUserByRegister(register)!=null) {
			return true;
		}
		return false;
	}
/**
 * 修改用户密码
 */
@Override
public boolean updatePwd(String register, String newPwd) {
	// TODO Auto-generated method stub
	return ubd.updatePwd(register, newPwd);
}
/**
 * 得到指定账号的用户信息
 */
@Override
public UserBean getUserByRegister(String register) {
	// TODO Auto-generated method stub
	return ubd.getUserByRegister(register);
}

}
