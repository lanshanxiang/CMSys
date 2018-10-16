package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.UserBean;

public interface UserBeanDao {
	 //查询所有用户
     public List<UserBean> queryUser();
     //注册
     //登录
     public UserBean login(String register,String userPwd);
     //修改
     public boolean updateUser(UserBean ub);
     //删除
     public boolean deleteUser(int userId);
     //停用用户
	 public boolean stopUser(int state, int userId);
     
}
