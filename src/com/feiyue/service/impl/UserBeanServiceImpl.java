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

}
