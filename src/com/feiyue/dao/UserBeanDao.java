package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.UserBean;
/**
 * 
 * @author Administrator
 *
 */
public interface UserBeanDao {
	 //查询所有用户
     public List<UserBean> queryUser();
     //用户快速注册
     public boolean addUser(UserBean user);
   //管理员添加用户
     public boolean addUserByAdmin(UserBean user);
     //登录
     public UserBean login(String register,String userPwd);
     //得到指定账号的用户
     public UserBean getUserByRegister(String register);
     //修改用户密码
     public boolean updatePwd(String register,String newPwd);
   //重置用户密码
     public boolean resetPwd(int userId,String userPwd);
     //修改用户状态
     public boolean updateState(int userId,int newState);
     //修改
     public boolean updateUser(UserBean ub);
     //删除
     public boolean deleteUser(int userId);
     //批量删除
     public boolean deleteUsers(String[] userId);
     //停用用户
	 public boolean stopUser(int state, int userId);
     
}
