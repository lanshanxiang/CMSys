package com.feiyue.service;

import java.util.List;

import com.feiyue.entiy.UserBean;

public interface UserBeanService {
	//查询所有用户
    public List<UserBean> getQueryUser();
    //注册
    public boolean addUser(UserBean user);
    //登录
    public UserBean getLogin(String register,String userPwd);
    
    //修改
    public boolean getUpdateUser(UserBean ub);
    //删除
    public boolean getDeleteUser(int userId);
    //停用用户
	 public boolean getStopUser(int state, int userId);
	 //判断用户账号是否已存在
	 public boolean isHaveUserByRegister(String register);
	//得到指定账号的用户信息
	public UserBean getUserByRegister(String register);
	 //修改用户密码
	 public boolean updatePwd(String register, String newPwd);
}
