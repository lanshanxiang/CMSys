package com.feiyue.test;

import com.feiyue.entiy.ManagerBean;
import com.feiyue.service.ManagerService;
import com.feiyue.service.impl.ManagerServiceImpl;

/**
 *  @author lsx 
 *  @version 1.0
 *  @date 2018年10月14日 下午3:23:51
 *  
 */
public class ManagerTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ManagerService ms = new ManagerServiceImpl();
		String mName="蓝善翔";
		String mPwd="123";
		ManagerBean manager = ms.login(mName, mPwd);
		System.out.println(manager);
	}	
}
