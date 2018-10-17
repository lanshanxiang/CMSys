package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.UserBean;

public interface UserBeanDao {
	 //查询所有用户
     public List<UserBean> queryUser();
     //注册
     public boolean addUser(UserBean user);
     //登录
     public UserBean login(String register,String userPwd);
     //得到指定账号的用户
     public UserBean getUserByRegister(String register);
     //修改用户密码
     public boolean updatePwd(String register,String newPwd);
     //修改
     public boolean updateUser(UserBean ub);
     //删除
     public boolean deleteUser(int userId);
     //停用用户
	 public boolean stopUser(int state, int userId);
     
}
