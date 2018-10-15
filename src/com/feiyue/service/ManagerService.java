package com.feiyue.service;


import com.feiyue.entiy.ManagerBean;

/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月14日 下午3:02:47
 *  
 */
public interface ManagerService {
	ManagerBean login(String mName,String mPwd);
}
