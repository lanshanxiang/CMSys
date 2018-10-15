package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.UserBean;

public interface UserBeanDao {
    //查询所有用户
	public List<UserBean> queryUser();
}
