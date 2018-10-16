package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.UserBean;

public interface UserBeanService {
	//查询所有用户
    public List<UserBean> getQueryUser();
    //注册
    //登录
    public UserBean getLogin(String register,String userPwd);
    //修改
    public boolean getUpdateUser(UserBean ub);
    //删除
    public boolean getDeleteUser(int userId);
    //停用用户
	 public boolean getStopUser(int state, int userId);
}
