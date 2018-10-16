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

	@Override
	public UserBean login(String register, String userPwd) {
		// TODO Auto-generated method stub
		List<UserBean> list=(List<UserBean>) DBUtil.select("select * from where tb_user.register=? and tb_user.userPwd=?", UserBean.class, register,userPwd);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public boolean stopUser(int state,int userId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_user set state=? where userId=?", state,userId)>0;
	}

	@Override
	public boolean deleteUser(int userId) {
		// TODO Auto-generated method stub
		return DBUtil.execute("delete from tb_user where userId=?", userId)>0;
	}

	@Override
	public boolean updateUser(UserBean ub) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_user set userName=?,userPwd=?,question=?,answer=? where userId=?", ub.getUserName(),ub.getUserPwd(),ub.getQuestion(),ub.getAnswer(),ub.getUserId())>0;
	}

}
