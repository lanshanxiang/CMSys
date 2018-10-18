package com.feiyue.dao.impl;

import java.io.PrintWriter;
import java.util.List;

import com.feiyue.dao.UserBeanDao;
import com.feiyue.entiy.UserBean;
import com.feiyue.util.DBUtil;
/**
 * UserBeanDao接口的实现类 
 * @author Administrator
 *
 */
public class UserBeanDaoImpl implements UserBeanDao {

	@Override
	public List<UserBean> queryUser() {
		// TODO Auto-generated method stub
		return (List<UserBean>) DBUtil.select("SELECT tb_user.userId,tb_user.register,tb_user.userPwd,tb_user.userName,tb_user.userSex,tb_user.userAge,tb_tenement.tenementId,tb_tenement.tenementName,tb_user.question,tb_user.answer,tb_user.state FROM tb_user LEFT OUTER JOIN tb_tenement ON tb_user.tenementId = tb_tenement.tenementId", UserBean.class);
	}

	@Override
	public UserBean login(String register, String userPwd) {
		// TODO Auto-generated method stub
		List<UserBean> list=(List<UserBean>) DBUtil.select("select * from  tb_user where tb_user.register=? and tb_user.userPwd=?", UserBean.class, register,userPwd);
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
/**
 * 修改用户信息
 */
	@Override
	public boolean updateUser(UserBean ub) {
		// TODO Auto-generated method stub
		return DBUtil.execute("UPDATE tb_user SET userName=?,userSex=?,userAge=?,tenementId=?,question=?,answer=?,state=? WHERE userId=?", 
				ub.getUserName(),ub.getUserSex(),ub.getUserAge(),ub.getTenementId(),ub.getQuestion(),ub.getAnswer(),ub.getState(),ub.getUserId())>0;
	}

	@Override
	public boolean addUser(UserBean user) {
		// TODO Auto-generated method stub
		String sql="insert into tb_user(register,userPwd,question,answer)VALUES(?,?,?,?)";
		return DBUtil.execute(sql, user.getRegister(),user.getUserPwd(),user.getQuestion(),user.getAnswer())>0  ;
	}

	@Override
	public UserBean getUserByRegister(String register) {
		// TODO Auto-generated method stub
		
		
		List<UserBean> list=(List<UserBean>) DBUtil.select("SELECT * from tb_user where register=?", UserBean.class, register);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}
/**
 * 修改用户密码
 */
	@Override
	public boolean updatePwd(String register, String newPwd) {
		// TODO Auto-generated method stub
		return DBUtil.execute("update tb_user set userAge=? where register=?", newPwd,register)>0;
	}
/**
 * 管理员添加新用户
 */
@Override
public boolean addUserByAdmin(UserBean user) {
	// TODO Auto-generated method stub
	String sql="INSERT INTO tb_user (register, userPwd, userName, userSex, userAge, tenementId, question, answer,state) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 1)";
	return DBUtil.execute(sql, user.getRegister(),user.getUserPwd(),user.getUserName(),user.getUserSex(),user.getUserAge(),user.getTenementId(),user.getQuestion(),user.getAnswer())>0;
}
/**
 * 修改用户状态
 */
@Override
public boolean updateState(int userId, int newState) {
	// TODO Auto-generated method stub
	String sql="update tb_user set state=? where userId=?";
	return DBUtil.execute(sql, newState,userId)>0;
}
/**
 * 批量删除
 */
@Override
public boolean deleteUsers(String[] userId) {
	// TODO Auto-generated method stub
	//批量删除的SQL语句
	String sql="DELETE FROM tb_user WHERE userId IN (";
	//循环拼接ID
	for (String string : userId) {
		sql+=string+",";
	}
	//最后的SQL语句
	sql=sql.substring(0,sql.lastIndexOf(","))+")";
	return DBUtil.execute(sql)>0;
}

@Override
public boolean resetPwd(int userId,String userPwd) {
	// TODO Auto-generated method stub
	String sql="update tb_user set userPwd=? where userId=?";
	return DBUtil.execute(sql,userPwd,userId)>0;
}

}
