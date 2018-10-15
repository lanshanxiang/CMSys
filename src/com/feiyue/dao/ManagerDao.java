package com.feiyue.dao;

import java.util.List;

import com.feiyue.entiy.ManagerBean;

/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月13日 上午11:11:18 
 *  
 */
public interface ManagerDao {
	//根据用户名和密码查询这个用户
	//返回值为boolean  List
	// 用户名在表中应该是唯一的
	ManagerBean queryManager(String mName,String mPwd);
	//查询所有用户
	public List<ManagerBean> queryOnlyManager();
}
